### LocalFeedLoader

The Store collaborator in LocalFeedLoader is calling two methods: 
    1. deleteCacheFeed
    2. insert 


We have order dependency, need to test it.
Calling insert if only delete is successful
