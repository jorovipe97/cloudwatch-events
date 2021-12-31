# WIP CloudWatch Event Rules patterns

This repo is just a work in progress of some CloudWatch Event Rules patterns and event objects used to test them.

The event objects are extracted from [AWS docs](https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/EventTypes.html).

To understand more about how to write custom event patterns check out [official docs](https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/CloudWatchEventsandEventPatterns.html).

## Example usage of this repo.

You can invoke directly the `aws events test-event-pattern` CLI command however there's an helper script on project root (`./test-event-pattern.sh`) to invoke easily passing the .json files on this repo.

### Example invokations
```bash
./test-event-pattern.sh codepipeline on-pipeline-started.json pipeline-started.json

./test-event-pattern.sh codepipeline on-pipeline-deploying.json started-deploy-action.json
```