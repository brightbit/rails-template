# Reporting issues

Titles should be concise and <55 characters (like commit messages).

Please use this template for bug reports:

```markdown
## Description of Problem

One or two sentences giving an overview of the issue.

## System details

* **Browser**: Chrome 29

* **OS**: Mac OS X 10.9.0

## Steps to Reproduce

  1. Went to [Giant Coffee mug](https://example.com/products/123)

  2. Clicked "Launch Ponies"

## HAR file (Attach only if applicable and reproducable in Chrome)

  * [HAR](http://example.com/issue_123.har)

## Observed Behavior

  * Ponies die

## Expected Behavior

  * Ponies survive
```

# Adding a feature/fixing a bug (developer)

* Have each feature/fix in a single commit. You can create mutliple
  commits, but rebase them together before doing a pull request.

* Each commit should be a working set of changes (don't commit one change with
  another fix commit after it). If you want to get your code off your computer
  add "@wip" to the commit message and then rebase over it later. (This doesn't
  work well if you're collaborating on a branch. A branch with your initials at
  the front [e.g. eb-add_minitest] signifies it's your personal branch.)

* Never push to the master branch. Use feature branches instead, as detailed below.
  If you ever do push to master, make sure to *never* do a forced push to master.
  This will avoid the potential for much pain and gnashing of teeth.

* In feature branches, we do encourage forced push to clean up commit history.
  However, even in a feature branch, use great care if anyone else might be
  collaborating on the same branch.

* When feasible, program production code with a pair.

* Even when pair programming is not feasible, allow a second developer to review
  production code and merge it to master after any discussion and revision. In
  other words: a developer other than the author should merge the pull request.

## A good workflow when you're ready to fix something:

1. Make sure you're on master and up to date (note a rebase not merge):

   ```bash
   git checkout master
   git pull --rebase
   ```

2. Make a feature branch for your fix:

   ```bash
   git checkout -b eb-add_minitest
   ```

3. *do your work*, then:

4. Add all files not checked in (make sure you don't have family_photo.jpg in the
   directory):

   ```bash
   git add .
   ```

5. Commit the changes; --verbose add the full git diff to comments in the commit
   message for your reviewing:

   ```bash
   git commit --verbose
   ```

6. When you run the above command it will open your EDITOR and ask for a commit
   message. Provide
   * a <55 character one line title, followed by
   * two newlines, followed by
   * a paragraph of what was changed, followed by
   * a bulleted list of changes.

   See: https://github.com/brightbit/swagexpert/commit/bb4a46a80245f4362b59855274ef697eb143d8b2)

7. This is a good time to do an interactive rebase to squash any excess commits.

   ```bash
   git rebase -i HEAD~4
   ```

8. Next push the changes to github (this sets the upstream for the pull request):

   ```bash
   git push -u origin eb-add_minitest
   ```

9. And make the pull request:

   ```bash
   hub pull-request
   ```

   (This opens EDITOR so you can write the pull request; after save/quit it
   provides the link to the PR. See https://github.com/github/hub for installation.)

This looks like a lot but with some aliases such as in [dotfiles](http://github.com/ericboehs/dotfiles)
it can look something like this:

```bash
gco -b eb-add_minitest
```
*do work*

```bash
gacpr
```

# Environment Setup

1. To satisfy the PostgreSQL dependency, ensure that either
   a. You don't have PostgreSQL installed at all (step 2 will install it), or
   b. PostgreSQL 9.2+ is running on the default port of 5433.
2. Run script/setup from the shell console.
3. Install PhantomJS 1.8.1+ on your machine, in order to run the test suite

To have a fully running local development environment, you'll need to replace the dummy values in .env with real ones.
Most of these can be obtained by running `heroku config -s` on the console. You'll also need a working S3 bucket for some functionality.

## Configure a development S3 Bucket

One exception is configuring S3 for development. You'll need to create a real S3 bucket that matches the value of your
FOG_DIRECTORY variable. That bucket will need to be fully writeable by the user specified in your
AWS_ACCESS_KEY_ID/AWS_SECRET_ACCESS_KEY environment variables. Also, you will need to add a CORS configuration like the
following to the bucket:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<CORSConfiguration xmlns="http://s3.amazonaws.com/doc/2006-03-01/">
    <CORSRule>
        <AllowedOrigin>*://localhost:3000</AllowedOrigin>
        <AllowedMethod>GET</AllowedMethod>
        <AllowedMethod>POST</AllowedMethod>
        <AllowedMethod>PUT</AllowedMethod>
        <MaxAgeSeconds>3000</MaxAgeSeconds>
        <AllowedHeader>*</AllowedHeader>
    </CORSRule>
    <CORSRule>
        <AllowedOrigin>*://appname.dev</AllowedOrigin>
        <AllowedMethod>GET</AllowedMethod>
        <AllowedMethod>POST</AllowedMethod>
        <AllowedMethod>PUT</AllowedMethod>
        <MaxAgeSeconds>3000</MaxAgeSeconds>
        <AllowedHeader>*</AllowedHeader>
    </CORSRule>
    <CORSRule>
        <AllowedOrigin>*</AllowedOrigin>
        <AllowedMethod>GET</AllowedMethod>
        <MaxAgeSeconds>3000</MaxAgeSeconds>
        <AllowedHeader>Authorization</AllowedHeader>
    </CORSRule>
</CORSConfiguration>
```
