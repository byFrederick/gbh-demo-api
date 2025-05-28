# CI/CD pipeline using Actions and Helm

- I decided to modify demo-api to use webpack bundler to build the app and upload artifact to github.
- As a future improvement, I'd have added unit testing job to the build on PR workflow.
- I took a look on your public repos to see what bests practices you follow. I saw the concurrency config you use on your workflows, I read about that and decided to use on my workflows.
- Helm Chart deployment could be improved adding chart and app version management, because I'm not modifying the Chart nor app version on current workflow.
