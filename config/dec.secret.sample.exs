config :ex_aws,
  access_key_id: ["access_key_id", :instance_role],
  secret_access_key: ["secret_access_key", :instance_role]

config :ex_aws, :s3,
  scheme: "http://",
  host: "999.999.9.9",
  port: 0000,
  region: ""

config :waffle,
  storage: Waffle.Storage.S3, # or Waffle.Storage.Local
  # bucket: {:system, "AWS_S3_BUCKET"}, # if using S3
  asset_host: "http://999.999.9.9:0000/"
