<Screen
  id="page1"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  title={null}
  urlSlug=""
>
  <SqlQueryUnified
    id="cumulative_order_count"
    isMultiplayerEdited={false}
    query={include("../lib/cumulative_order_count.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="2d377f5e-704c-4f5b-867d-6ab970d07267"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="totalSpent"
    query={include("../lib/totalSpent.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="2d377f5e-704c-4f5b-867d-6ab970d07267"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="query15"
    notificationDuration={4.5}
    query={include("../lib/query15.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="2d377f5e-704c-4f5b-867d-6ab970d07267"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="query16"
    query={include("../lib/query16.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="2d377f5e-704c-4f5b-867d-6ab970d07267"
    warningCodes={[]}
  />
  <Frame
    id="$main2"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Include src="./tabbedContainer1.rsx" />
  </Frame>
</Screen>
