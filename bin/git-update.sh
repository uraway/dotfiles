#!/bin/sh

user=`git config github.user`
git remote show ${user} > /dev/null 2>&1
has_repo=$?

git fetch --all --prune
modified=`git status | grep modified | wc -l`
if [ $modified -gt 0 ] ; then git stash ; fi
branch=`git branch | grep '*' | cut -f 2 -d ' '`
default_branch=`git symbolic-ref refs/remotes/origin/HEAD | sed 's@^refs/remotes/origin/@@'`
git checkout $default_branch
git pull --rebase origin $default_branch
if [ $has_repo = 0 ] ; then git push ${user} $default_branch; fi
if [ $branch != $default_branch ] ; then
    if [ `git branch --merged | grep ${branch} | wc -l` -eq 1 ]
    then
        git branch -d ${branch}
    else
        git checkout ${branch}
    fi
fi
if [ $modified -gt 0 ] ; then git stash pop ; fi
