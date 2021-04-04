part of appwrite;


class Projects extends Service {
    Projects(Client client): super(client);

     /// List Projects
    Future<Response> list({String search = '', int limit = 25, int offset = 0, OrderType orderType = OrderType.asc}) {
        final String path = '/projects';

        final Map<String, dynamic> params = {
            'search': search,
            'limit': limit,
            'offset': offset,
            'orderType': orderType.name(),
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        return client.call(HttpMethod.get, path: path, params: params, headers: headers);
    }

     /// Create Project
    Future<Response> create({@required String name, @required String teamId, String description = '', String logo = '', String url = '', String legalName = '', String legalCountry = '', String legalState = '', String legalCity = '', String legalAddress = '', String legalTaxId = ''}) {
        final String path = '/projects';

        final Map<String, dynamic> params = {
            'name': name,
            'teamId': teamId,
            'description': description,
            'logo': logo,
            'url': url,
            'legalName': legalName,
            'legalCountry': legalCountry,
            'legalState': legalState,
            'legalCity': legalCity,
            'legalAddress': legalAddress,
            'legalTaxId': legalTaxId,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        return client.call(HttpMethod.post, path: path, params: params, headers: headers);
    }

     /// Get Project
    Future<Response> get({@required String projectId}) {
        final String path = '/projects/{projectId}'.replaceAll(RegExp('{projectId}'), projectId);

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        return client.call(HttpMethod.get, path: path, params: params, headers: headers);
    }

     /// Update Project
    Future<Response> update({@required String projectId, @required String name, String description = '', String logo = '', String url = '', String legalName = '', String legalCountry = '', String legalState = '', String legalCity = '', String legalAddress = '', String legalTaxId = ''}) {
        final String path = '/projects/{projectId}'.replaceAll(RegExp('{projectId}'), projectId);

        final Map<String, dynamic> params = {
            'name': name,
            'description': description,
            'logo': logo,
            'url': url,
            'legalName': legalName,
            'legalCountry': legalCountry,
            'legalState': legalState,
            'legalCity': legalCity,
            'legalAddress': legalAddress,
            'legalTaxId': legalTaxId,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        return client.call(HttpMethod.patch, path: path, params: params, headers: headers);
    }

     /// Delete Project
    Future<Response> delete({@required String projectId, @required String password}) {
        final String path = '/projects/{projectId}'.replaceAll(RegExp('{projectId}'), projectId);

        final Map<String, dynamic> params = {
            'password': password,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        return client.call(HttpMethod.delete, path: path, params: params, headers: headers);
    }

     /// List Domains
    Future<Response> listDomains({@required String projectId}) {
        final String path = '/projects/{projectId}/domains'.replaceAll(RegExp('{projectId}'), projectId);

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        return client.call(HttpMethod.get, path: path, params: params, headers: headers);
    }

     /// Create Domain
    Future<Response> createDomain({@required String projectId, @required String domain}) {
        final String path = '/projects/{projectId}/domains'.replaceAll(RegExp('{projectId}'), projectId);

        final Map<String, dynamic> params = {
            'domain': domain,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        return client.call(HttpMethod.post, path: path, params: params, headers: headers);
    }

     /// Get Domain
    Future<Response> getDomain({@required String projectId, @required String domainId}) {
        final String path = '/projects/{projectId}/domains/{domainId}'.replaceAll(RegExp('{projectId}'), projectId).replaceAll(RegExp('{domainId}'), domainId);

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        return client.call(HttpMethod.get, path: path, params: params, headers: headers);
    }

     /// Delete Domain
    Future<Response> deleteDomain({@required String projectId, @required String domainId}) {
        final String path = '/projects/{projectId}/domains/{domainId}'.replaceAll(RegExp('{projectId}'), projectId).replaceAll(RegExp('{domainId}'), domainId);

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        return client.call(HttpMethod.delete, path: path, params: params, headers: headers);
    }

     /// Update Domain Verification Status
    Future<Response> updateDomainVerification({@required String projectId, @required String domainId}) {
        final String path = '/projects/{projectId}/domains/{domainId}/verification'.replaceAll(RegExp('{projectId}'), projectId).replaceAll(RegExp('{domainId}'), domainId);

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        return client.call(HttpMethod.patch, path: path, params: params, headers: headers);
    }

     /// List Keys
    Future<Response> listKeys({@required String projectId}) {
        final String path = '/projects/{projectId}/keys'.replaceAll(RegExp('{projectId}'), projectId);

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        return client.call(HttpMethod.get, path: path, params: params, headers: headers);
    }

     /// Create Key
    Future<Response> createKey({@required String projectId, @required String name, @required List scopes}) {
        final String path = '/projects/{projectId}/keys'.replaceAll(RegExp('{projectId}'), projectId);

        final Map<String, dynamic> params = {
            'name': name,
            'scopes': scopes,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        return client.call(HttpMethod.post, path: path, params: params, headers: headers);
    }

     /// Get Key
    Future<Response> getKey({@required String projectId, @required String keyId}) {
        final String path = '/projects/{projectId}/keys/{keyId}'.replaceAll(RegExp('{projectId}'), projectId).replaceAll(RegExp('{keyId}'), keyId);

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        return client.call(HttpMethod.get, path: path, params: params, headers: headers);
    }

     /// Update Key
    Future<Response> updateKey({@required String projectId, @required String keyId, @required String name, @required List scopes}) {
        final String path = '/projects/{projectId}/keys/{keyId}'.replaceAll(RegExp('{projectId}'), projectId).replaceAll(RegExp('{keyId}'), keyId);

        final Map<String, dynamic> params = {
            'name': name,
            'scopes': scopes,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        return client.call(HttpMethod.put, path: path, params: params, headers: headers);
    }

     /// Delete Key
    Future<Response> deleteKey({@required String projectId, @required String keyId}) {
        final String path = '/projects/{projectId}/keys/{keyId}'.replaceAll(RegExp('{projectId}'), projectId).replaceAll(RegExp('{keyId}'), keyId);

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        return client.call(HttpMethod.delete, path: path, params: params, headers: headers);
    }

     /// Update Project OAuth2
    Future<Response> updateOAuth2({@required String projectId, @required String provider, String appId = '', String secret = ''}) {
        final String path = '/projects/{projectId}/oauth2'.replaceAll(RegExp('{projectId}'), projectId);

        final Map<String, dynamic> params = {
            'provider': provider,
            'appId': appId,
            'secret': secret,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        return client.call(HttpMethod.patch, path: path, params: params, headers: headers);
    }

     /// List Platforms
    Future<Response> listPlatforms({@required String projectId}) {
        final String path = '/projects/{projectId}/platforms'.replaceAll(RegExp('{projectId}'), projectId);

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        return client.call(HttpMethod.get, path: path, params: params, headers: headers);
    }

     /// Create Platform
    Future<Response> createPlatform({@required String projectId, @required String type, @required String name, String key = '', String store = '', String hostname = ''}) {
        final String path = '/projects/{projectId}/platforms'.replaceAll(RegExp('{projectId}'), projectId);

        final Map<String, dynamic> params = {
            'type': type,
            'name': name,
            'key': key,
            'store': store,
            'hostname': hostname,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        return client.call(HttpMethod.post, path: path, params: params, headers: headers);
    }

     /// Get Platform
    Future<Response> getPlatform({@required String projectId, @required String platformId}) {
        final String path = '/projects/{projectId}/platforms/{platformId}'.replaceAll(RegExp('{projectId}'), projectId).replaceAll(RegExp('{platformId}'), platformId);

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        return client.call(HttpMethod.get, path: path, params: params, headers: headers);
    }

     /// Update Platform
    Future<Response> updatePlatform({@required String projectId, @required String platformId, @required String name, String key = '', String store = '', String hostname = ''}) {
        final String path = '/projects/{projectId}/platforms/{platformId}'.replaceAll(RegExp('{projectId}'), projectId).replaceAll(RegExp('{platformId}'), platformId);

        final Map<String, dynamic> params = {
            'name': name,
            'key': key,
            'store': store,
            'hostname': hostname,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        return client.call(HttpMethod.put, path: path, params: params, headers: headers);
    }

     /// Delete Platform
    Future<Response> deletePlatform({@required String projectId, @required String platformId}) {
        final String path = '/projects/{projectId}/platforms/{platformId}'.replaceAll(RegExp('{projectId}'), projectId).replaceAll(RegExp('{platformId}'), platformId);

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        return client.call(HttpMethod.delete, path: path, params: params, headers: headers);
    }

     /// List Tasks
    Future<Response> listTasks({@required String projectId}) {
        final String path = '/projects/{projectId}/tasks'.replaceAll(RegExp('{projectId}'), projectId);

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        return client.call(HttpMethod.get, path: path, params: params, headers: headers);
    }

     /// Create Task
    Future<Response> createTask({@required String projectId, @required String name, @required String status, @required String schedule, @required bool security, @required String httpMethod, @required String httpUrl, List httpHeaders = const [], String httpUser = '', String httpPass = ''}) {
        final String path = '/projects/{projectId}/tasks'.replaceAll(RegExp('{projectId}'), projectId);

        final Map<String, dynamic> params = {
            'name': name,
            'status': status,
            'schedule': schedule,
            'security': security,
            'httpMethod': httpMethod,
            'httpUrl': httpUrl,
            'httpHeaders': httpHeaders,
            'httpUser': httpUser,
            'httpPass': httpPass,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        return client.call(HttpMethod.post, path: path, params: params, headers: headers);
    }

     /// Get Task
    Future<Response> getTask({@required String projectId, @required String taskId}) {
        final String path = '/projects/{projectId}/tasks/{taskId}'.replaceAll(RegExp('{projectId}'), projectId).replaceAll(RegExp('{taskId}'), taskId);

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        return client.call(HttpMethod.get, path: path, params: params, headers: headers);
    }

     /// Update Task
    Future<Response> updateTask({@required String projectId, @required String taskId, @required String name, @required String status, @required String schedule, @required bool security, @required String httpMethod, @required String httpUrl, List httpHeaders = const [], String httpUser = '', String httpPass = ''}) {
        final String path = '/projects/{projectId}/tasks/{taskId}'.replaceAll(RegExp('{projectId}'), projectId).replaceAll(RegExp('{taskId}'), taskId);

        final Map<String, dynamic> params = {
            'name': name,
            'status': status,
            'schedule': schedule,
            'security': security,
            'httpMethod': httpMethod,
            'httpUrl': httpUrl,
            'httpHeaders': httpHeaders,
            'httpUser': httpUser,
            'httpPass': httpPass,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        return client.call(HttpMethod.put, path: path, params: params, headers: headers);
    }

     /// Delete Task
    Future<Response> deleteTask({@required String projectId, @required String taskId}) {
        final String path = '/projects/{projectId}/tasks/{taskId}'.replaceAll(RegExp('{projectId}'), projectId).replaceAll(RegExp('{taskId}'), taskId);

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        return client.call(HttpMethod.delete, path: path, params: params, headers: headers);
    }

     /// Get Project
    Future<Response> getUsage({@required String projectId, String range = '30d'}) {
        final String path = '/projects/{projectId}/usage'.replaceAll(RegExp('{projectId}'), projectId);

        final Map<String, dynamic> params = {
            'range': range,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        return client.call(HttpMethod.get, path: path, params: params, headers: headers);
    }

     /// List Webhooks
    Future<Response> listWebhooks({@required String projectId}) {
        final String path = '/projects/{projectId}/webhooks'.replaceAll(RegExp('{projectId}'), projectId);

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        return client.call(HttpMethod.get, path: path, params: params, headers: headers);
    }

     /// Create Webhook
    Future<Response> createWebhook({@required String projectId, @required String name, @required List events, @required String url, @required bool security, String httpUser = '', String httpPass = ''}) {
        final String path = '/projects/{projectId}/webhooks'.replaceAll(RegExp('{projectId}'), projectId);

        final Map<String, dynamic> params = {
            'name': name,
            'events': events,
            'url': url,
            'security': security,
            'httpUser': httpUser,
            'httpPass': httpPass,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        return client.call(HttpMethod.post, path: path, params: params, headers: headers);
    }

     /// Get Webhook
    Future<Response> getWebhook({@required String projectId, @required String webhookId}) {
        final String path = '/projects/{projectId}/webhooks/{webhookId}'.replaceAll(RegExp('{projectId}'), projectId).replaceAll(RegExp('{webhookId}'), webhookId);

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        return client.call(HttpMethod.get, path: path, params: params, headers: headers);
    }

     /// Update Webhook
    Future<Response> updateWebhook({@required String projectId, @required String webhookId, @required String name, @required List events, @required String url, @required bool security, String httpUser = '', String httpPass = ''}) {
        final String path = '/projects/{projectId}/webhooks/{webhookId}'.replaceAll(RegExp('{projectId}'), projectId).replaceAll(RegExp('{webhookId}'), webhookId);

        final Map<String, dynamic> params = {
            'name': name,
            'events': events,
            'url': url,
            'security': security,
            'httpUser': httpUser,
            'httpPass': httpPass,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        return client.call(HttpMethod.put, path: path, params: params, headers: headers);
    }

     /// Delete Webhook
    Future<Response> deleteWebhook({@required String projectId, @required String webhookId}) {
        final String path = '/projects/{projectId}/webhooks/{webhookId}'.replaceAll(RegExp('{projectId}'), projectId).replaceAll(RegExp('{webhookId}'), webhookId);

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        return client.call(HttpMethod.delete, path: path, params: params, headers: headers);
    }
}