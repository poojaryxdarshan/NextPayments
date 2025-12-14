@isTest
public class TestingPipelineTest {
    
    @isTest
    static void testConstructor() {
        // Start test context
        Test.startTest();
        
        // Create instance of TestingPipeline
        TestingPipeline testObj = new TestingPipeline();
        
        // Stop test context
        Test.stopTest();
        
        // Assert that object was created successfully
        System.assertNotEquals(null, testObj, 'TestingPipeline object should be instantiated');
    }
    
    @isTest
    static void testDebugStatement() {
        // Start test context
        Test.startTest();
        
        // Create instance - this will trigger the debug statement
        TestingPipeline testObj = new TestingPipeline();
        
        // Stop test context
        Test.stopTest();
        
        // Verify object creation (debug statements can't be directly tested)
        System.assertNotEquals(null, testObj, 'TestingPipeline should be created successfully');
    }
}