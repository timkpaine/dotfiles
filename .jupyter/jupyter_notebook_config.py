c.NotebookApp.allow_origin = '*'
c.NotebookApp.browser = 'chrome'
c.NotebookApp.disable_check_xsrf = True
c.NotebookApp.iopub_data_rate_limit = 1000000000
c.NotebookApp.iopub_msg_rate_limit = 1000000
# c.NotebookApp.ip = '0.0.0.0'
c.NotebookApp.password_required = False
c.NotebookApp.token = ''
c.LabApp.allow_origin = '*'
c.LabApp.browser = 'chrome'
c.LabApp.disable_check_xsrf = True
c.LabApp.iopub_data_rate_limit = 1000000000
c.LabApp.iopub_msg_rate_limit = 1000000
# c.LabApp.ip = '0.0.0.0'
c.LabApp.password_required = False
c.LabApp.token = ''

c.JupyterFs.resources = [
    {
        "name": "homedir_fsspec",
        "type": "fsspec",
        "url": "file://~/Developer/projects/painebot/jupyter-fs/",
    }
    # {
    #     "name": "homedir_fsspec",
    #     "type": "fsspec",
    #     "url": "file://js",
    # }
    # {
    #     "name": "tim_s3",
    #     "type": "fsspec",
    #     "url": "s3://timkpaine-public",
    #     "auth": "env",
    #     "defaultWritable": True,
    #     "kwargs": {"endpoint_url": os.environ["FSSPEC_S3_ENDPOINT_URL"], "key": os.environ["FSSPEC_S3_KEY"], "secret": os.environ["FSSPEC_S3_SECRET"]}
    # }
]

