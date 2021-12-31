# Example invokations:
# ./test-event-pattern.sh codepipeline on-pipeline-started.json pipeline-started.json
# Turns into:
# aws events test-event-pattern --event-pattern file://codepipeline/on-pipeline-started.json --event file://codepipeline/pipeline-started.json

service=$1
eventPattern=$2
event=$3

aws events test-event-pattern --event-pattern "file://$service/patterns/$eventPattern" --event "file://$service/$event"
