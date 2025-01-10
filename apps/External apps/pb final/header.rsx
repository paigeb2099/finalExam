<Frame
  id="$header"
  enableFullBleed={null}
  isHiddenOnDesktop={false}
  isHiddenOnMobile={true}
  padding="8px 12px"
  sticky={true}
  type="header"
>
  <Image
    id="image2"
    fit="contain"
    heightType="fixed"
    horizontalAlign="center"
    retoolStorageFileId="c51a2a1a-c66d-46f2-b62b-c85ae9cd485a"
    src="https://picsum.photos/id/1025/800/600"
    srcType="retoolStorageFileId"
  />
  <Navigation
    id="navigation1"
    itemMode="static"
    retoolFileObject={{ ordered: [] }}
  >
    <Option
      id="e900d"
      icon="bold/interface-folder-check"
      iconPosition="left"
      itemType="page"
      label="Asset Manager"
      screenTargetId="defaultPage"
    />
    <Option
      id="19347"
      hidden={'current_user.groups.some(group => group.name === "admin")'}
      icon="bold/money-graph-bar-increase"
      iconPosition="left"
      itemType="page"
      label="Metrics"
      screenTargetId="page1"
    />
  </Navigation>
</Frame>
