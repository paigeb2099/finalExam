<Screen
  id="defaultPage"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  title="Default Page"
  urlSlug=""
>
  <SqlQueryUnified
    id="sampleQuery"
    notificationDuration={4.5}
    resourceDisplayName="retool_db"
    resourceName="b164e4a6-c5ab-49d6-b483-84ba9dcd7f3e"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
  />
  <RetoolUserActionQuery
    id="login"
    email="{{ EmailInput.value }}"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    metadata={null}
    password="{{ PasswordInput.value }}"
    resourceName="RetoolUserAction"
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="openApp"
      params={{ ordered: [{ uuid: "81583090-a0bf-11ef-ae0b-179f68be7703" }] }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </RetoolUserActionQuery>
  <OpenAPIQuery
    id="sendInvite"
    method="post"
    operationId={null}
    parameterMetadata=""
    path="/user_invites"
    requestBody={
      '{"email":"{{ SignupEmail.value }}","defaultGroupIds":[3793066]}'
    }
    requestBodyDynamicStates={
      '{"email":false,"defaultGroupIds":false,"metadata":false}'
    }
    requestBodyMetadata=""
    resourceDisplayName="Retool API"
    resourceName="92a78c07-061f-4efa-8702-6996960470f7"
    resourceTypeOverride=""
    server="default_server_url"
    specBasePath="default_server_url"
  />
  <Include src="./splitPaneFrame1.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="0"
    sticky={null}
    style={{ ordered: [{ canvas: "#cecece" }] }}
    type="main"
  >
    <Image
      id="image1"
      fit="contain"
      heightType="fixed"
      horizontalAlign="center"
      retoolStorageFileId="99b0f3e9-304a-4b5b-b83e-bd77fb3c8e44"
      src="https://picsum.photos/id/1025/800/600"
      srcType="retoolStorageFileId"
    />
  </Frame>
</Screen>
