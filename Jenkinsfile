node {
    stage('checkout') {
        git url: 'https://devcentral.nasqueron.org/source/docker-openfire.git', branch: 'main'
    }

    stage('validate-git-tag') {
        def version = readFile "VERSION"

        def tag_lookup = sh (
            script: 'git tag -l $VERSION',
            returnStdout: true
        ).trim()

        assert tag_lookup : "Tag $VERSION is missing."
    }
}
