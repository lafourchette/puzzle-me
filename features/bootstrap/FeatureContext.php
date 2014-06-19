<?php

use Behat\Behat\Context\ClosuredContextInterface,
    Behat\Behat\Context\TranslatedContextInterface,
    Behat\Behat\Context\BehatContext,
    Behat\Behat\Exception\PendingException;
use Behat\Gherkin\Node\PyStringNode,
    Behat\Gherkin\Node\TableNode;

//
// Require 3rd-party libraries here:
//
//   require_once 'PHPUnit/Autoload.php';
//   require_once 'PHPUnit/Framework/Assert/Functions.php';
//

/**
 * Features context.
 */
class FeatureContext extends BehatContext
{
    /**
     * Initializes context.
     * Every scenario gets it's own context object.
     *
     * @param array $parameters context parameters (set them up through behat.yml)
     */
    public function __construct(array $parameters)
    {
        if(! file_exists(__DIR__ . '/../../test.db')){
            $db = new \SQLite3(__DIR__ . '/../../test.db');
            $db->exec('CREATE TABLE clients (id integer primary key, name text unique not null)');
            $db->exec('CREATE TABLE calls (client_from integer not null, client_to integer not null, duration integer not null, cost integer not null)');
            $db->exec('INSERT INTO clients VALUES (1,\'Alice\')');
            $db->exec('INSERT INTO clients VALUES (2,\'Bob\')');
            $db->exec('INSERT INTO clients VALUES (3,\'Charle\')');
            $db->exec('INSERT INTO clients VALUES (4,\'David\')');
            $db->exec('INSERT INTO calls VALUES (1, 2, 30, 5)');
            $db->exec('INSERT INTO calls VALUES (1, 4, 30, 5)');
            $db->exec('INSERT INTO calls VALUES (4, 3, 30, 5)');
            $db->exec('INSERT INTO calls VALUES (4, 2, 30, 5)');
            $db->close();
        }
    }

    private $output;

    /** @Given /^I have a file named "([^"]*)"$/ */
    public function iHaveAFileNamed($file)
    {
        touch($file);
    }

    /** @When /^I run "([^"]*)"$/ */
    public function iRun($command)
    {
        exec('php ' . $command, $output);
        $this->output = trim(implode("\n", $output));
    }

    /** @Then /^I should get:$/ */
    public function iShouldGet(PyStringNode $string)
    {
        if ((string) $string !== $this->output) {
            throw new Exception(
                "Actual output is:\n" . $this->output
            );
        }
    }

    /**
     * @Then /^I should have these lines:$/
     */
    public function iShouldHaveTheseLine(PyStringNode $string)
    {
        $lines = explode(PHP_EOL, $this->output);
        $expectedLines = $string->getLines();
        foreach($expectedLines as $expectedLine){
            $index = array_search($expectedLine, $lines);
            if($index === false){
                throw new Exception(
                    "Should have line '$expectedLine' in:\n" . $this->output
                );
            }
            $lines[$index] = false;
        }
        $remainingLines = array_filter($lines);
        if(! empty($remainingLines)){
            throw new Exception(
                "Got remaining lines:\n" . implode(PHP_EOL, $remainingLines)
            );
        }
    }

}
