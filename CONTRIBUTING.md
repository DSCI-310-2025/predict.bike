# Contributing

Thanks for your interest in contributing to `predict.bike`!

This guide will walk you through our expectations for contributions based on [tidyverse's contribution guide](https://www.tidyverse.org/contribute/)


## Ways to Contribute

- Fix typos, broken links, or formatting issues in documentation
- Suggest new features or improvements
- Report a bug
- Add tests or improve existing ones
- Refactor or optimize existing code
- Help triage issues or review pull requests


## Contributing

Open an issue here: [Issues Page](https://github.com/DSIC-310-2025/predict.bike/issues)

1. **Fork the repository**  
   You’ll be working from your own copy.

2. **Clone your fork**  
   ```bash
   git clone https://github.com/DSIC-310-2025/predict.bike.git
   ```

3. **Install dependencies**  
   ```r
   devtools::install_dev_deps()
   ```

4. **Check the package**  
   Ensure everything is working by running:
   ```r
   devtools::check()
   ```

5. **Create a branch**  
   We recommend naming your branch after the change you're making:  
   ```r
   usethis::pr_init("my-fix-or-feature")
   ```

6. **Commit and Pull Request**  
   Once you’re done, commit your changes and open a PR:
   ```r
   usethis::pr_push()
   ```



## Pull Request Checklist

Before you submit a pull request:

- [ ] Does the package pass `devtools::check()` without errors or warnings?
- [ ] Have you added tests using [`testthat`](https://testthat.r-lib.org/)?
- [ ] Did you follow the tidyverse [style guide](https://style.tidyverse.org/)?
- [ ] Did you clearly describe your changes in the PR?



## Code of Conduct

All contributors are expected to follow our [Code of Conduct](CODE_OF_CONDUCT.md). By contributing, you agree to act respectfully and inclusively.
