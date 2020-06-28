from dagster import pipeline, repository, solid
from pl_hello_cereal import hello_cereal_pipeline
from pl_hello import hello_pipeline
from pl_inputs import inputs_pipeline


@repository
def tutorial_repository():
    # Note that we can pass a dict of functions, rather than a list of
    # pipeline definitions. This allows us to construct pipelines lazily,
    # if, e.g., initializing a pipeline involves any heavy compute
    return {
        'pipelines': {
            'hello_cereal_pipeline': lambda: hello_cereal_pipeline,
            'hello_pipeline': lambda: hello_pipeline,
            'inputs_pipeline': lambda: inputs_pipeline
        }
    }