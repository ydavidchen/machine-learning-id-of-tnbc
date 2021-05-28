
## Reusable helpers
def reveal_bucket(bucket):
    """Shows Bucket content"""
    import boto3
    for obj in boto3.resource('s3').Bucket(bucket).objects.all():
        return(obj.key)
        
        
def get_s3_uri(prefix, bucket):
    """ Generates string of S3 URI """
    return "s3://{}/{}".format(bucket, prefix)

def directS3Save(df, bucket, path_s3='df.csv'):
    """ Directly exports a dataframe to CSV in a bucket """
    from io import StringIO
    import boto3

    csv_buffer = StringIO()
    df.to_csv(csv_buffer)
    s3_resource = boto3.resource('s3')
    s3_resource.Object(bucket, path_s3).put(Body=csv_buffer.getvalue())