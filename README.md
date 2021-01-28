# Github Actions - S3 and Cloudfront Invalidation
This is a simple utility to deploy to AWS S3 bucket and invalidate a cloudfront id. It is that straightforward. See usage below

### Usage:
Just place this in your code underneath your build action within the steps, update the variables and secrets and that is it.
```yaml
      - name: Deploy application to AWS S3 and invalidate cloudfront cache
        uses: pukonu/action-deploy-webapp-aws@v.1.0
        id: deploy
        with:
          build_path: './path/to/build/folder'
          bucket_name: '<AWS BUCKET NAME>'
          bucket_key: ''
          distribution_invalidation_path: '/*'
        env:
          DISTRIBUTION_ID: '<DISTRIBUTION ID>'
          AWS_REGION: '<AWS REGION>'
          AWS_ACCESS_KEY_ID: '<AWS_ACCESS_KEY_ID>'
          AWS_SECRET_ACCESS_KEY: '<AWS_SECRET_ACCESS_KEY>'
```
