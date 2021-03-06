# Tcr (deprecated)

Experiment in **Test && Commit || Revert**

## DEPRECATED. Please move to:  
* hex: https://hex.pm/packages/limbo
* git: https://github.com/mwindholtz/limbo

## Installation

Add to deps()
```
  {:tcr, "~> 0.1.1" }
```

then run  
1. `mix deps.get`
1. `mix deps.compile tcr`


### In one terminal window run
`mix tcr.pull_push`
This will push commits to the trunk whenever they are ready

### In another window run 
` MIX_ENV=test mix tcr.test_commit `
This will run tests and save commits if test passes, and revert if it does not.


#### References
* [Kent Beck](https://medium.com/@kentbeck_7670/test-commit-revert-870bbd756864)
* [JB Rainsberger](https://blog.thecodewhisperer.com/permalink/the-worlds-shortest-article-on-test-and-commit-otherwise-revert)
* [Thomas Deniffel](https://medium.com/@tdeniffel/tcr-test-commit-revert-a-test-alternative-to-tdd-6e6b03c22bec)

