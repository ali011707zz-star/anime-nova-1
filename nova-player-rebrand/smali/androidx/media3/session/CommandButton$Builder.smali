.class public final Landroidx/media3/session/CommandButton$Builder;
.super Ljava/lang/Object;
.source "CommandButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/CommandButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private displayName:Ljava/lang/CharSequence;

.field private enabled:Z

.field private extras:Landroid/os/Bundle;

.field private final icon:I

.field private iconResId:I

.field private iconUri:Landroid/net/Uri;

.field private parameter:Ljava/lang/Object;

.field private playerCommand:I

.field private sessionCommand:Landroidx/media3/session/SessionCommand;

.field private slots:Lcom/google/common/primitives/ImmutableIntArray;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 532
    invoke-direct {p0, v0}, Landroidx/media3/session/CommandButton$Builder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 541
    invoke-static {p1}, Landroidx/media3/session/CommandButton;->getIconResIdForIconConstant(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroidx/media3/session/CommandButton$Builder;-><init>(II)V

    return-void
.end method

.method constructor <init>(II)V
    .locals 0

    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    iput p1, p0, Landroidx/media3/session/CommandButton$Builder;->icon:I

    .line 549
    iput p2, p0, Landroidx/media3/session/CommandButton$Builder;->iconResId:I

    .line 550
    const-string p1, ""

    iput-object p1, p0, Landroidx/media3/session/CommandButton$Builder;->displayName:Ljava/lang/CharSequence;

    .line 551
    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object p1, p0, Landroidx/media3/session/CommandButton$Builder;->extras:Landroid/os/Bundle;

    const/4 p1, -0x1

    .line 552
    iput p1, p0, Landroidx/media3/session/CommandButton$Builder;->playerCommand:I

    const/4 p1, 0x1

    .line 553
    iput-boolean p1, p0, Landroidx/media3/session/CommandButton$Builder;->enabled:Z

    return-void
.end method


# virtual methods
.method public build()Landroidx/media3/session/CommandButton;
    .locals 13

    .line 799
    iget-object v0, p0, Landroidx/media3/session/CommandButton$Builder;->sessionCommand:Landroidx/media3/session/SessionCommand;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget v3, p0, Landroidx/media3/session/CommandButton$Builder;->playerCommand:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-eq v0, v3, :cond_2

    move v1, v2

    :cond_2
    const-string v0, "Exactly one of sessionCommand and playerCommand should be set"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 802
    iget-object v0, p0, Landroidx/media3/session/CommandButton$Builder;->slots:Lcom/google/common/primitives/ImmutableIntArray;

    if-nez v0, :cond_3

    .line 803
    iget v0, p0, Landroidx/media3/session/CommandButton$Builder;->playerCommand:I

    iget v1, p0, Landroidx/media3/session/CommandButton$Builder;->icon:I

    invoke-static {v0, v1}, Landroidx/media3/session/CommandButton;->getDefaultSlot(II)I

    move-result v0

    invoke-static {v0}, Lcom/google/common/primitives/ImmutableIntArray;->of(I)Lcom/google/common/primitives/ImmutableIntArray;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/CommandButton$Builder;->slots:Lcom/google/common/primitives/ImmutableIntArray;

    .line 805
    :cond_3
    new-instance v1, Landroidx/media3/session/CommandButton;

    iget-object v2, p0, Landroidx/media3/session/CommandButton$Builder;->sessionCommand:Landroidx/media3/session/SessionCommand;

    iget v3, p0, Landroidx/media3/session/CommandButton$Builder;->playerCommand:I

    iget v4, p0, Landroidx/media3/session/CommandButton$Builder;->icon:I

    iget v5, p0, Landroidx/media3/session/CommandButton$Builder;->iconResId:I

    iget-object v6, p0, Landroidx/media3/session/CommandButton$Builder;->iconUri:Landroid/net/Uri;

    iget-object v7, p0, Landroidx/media3/session/CommandButton$Builder;->displayName:Ljava/lang/CharSequence;

    iget-object v8, p0, Landroidx/media3/session/CommandButton$Builder;->extras:Landroid/os/Bundle;

    iget-boolean v9, p0, Landroidx/media3/session/CommandButton$Builder;->enabled:Z

    iget-object v10, p0, Landroidx/media3/session/CommandButton$Builder;->slots:Lcom/google/common/primitives/ImmutableIntArray;

    iget-object v11, p0, Landroidx/media3/session/CommandButton$Builder;->parameter:Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-direct/range {v1 .. v12}, Landroidx/media3/session/CommandButton;-><init>(Landroidx/media3/session/SessionCommand;IIILandroid/net/Uri;Ljava/lang/CharSequence;Landroid/os/Bundle;ZLcom/google/common/primitives/ImmutableIntArray;Ljava/lang/Object;Landroidx/media3/session/CommandButton$1;)V

    return-object v1
.end method

.method public setCustomIconResId(I)Landroidx/media3/session/CommandButton$Builder;
    .locals 0

    .line 690
    iput p1, p0, Landroidx/media3/session/CommandButton$Builder;->iconResId:I

    return-object p0
.end method

.method public setDisplayName(Ljava/lang/CharSequence;)Landroidx/media3/session/CommandButton$Builder;
    .locals 0

    .line 724
    iput-object p1, p0, Landroidx/media3/session/CommandButton$Builder;->displayName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setEnabled(Z)Landroidx/media3/session/CommandButton$Builder;
    .locals 0

    .line 742
    iput-boolean p1, p0, Landroidx/media3/session/CommandButton$Builder;->enabled:Z

    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroidx/media3/session/CommandButton$Builder;
    .locals 1

    .line 754
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroidx/media3/session/CommandButton$Builder;->extras:Landroid/os/Bundle;

    return-object p0
.end method

.method public setIconResId(I)Landroidx/media3/session/CommandButton$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 676
    invoke-virtual {p0, p1}, Landroidx/media3/session/CommandButton$Builder;->setCustomIconResId(I)Landroidx/media3/session/CommandButton$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setIconUri(Landroid/net/Uri;)Landroidx/media3/session/CommandButton$Builder;
    .locals 2

    .line 709
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 710
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.resource"

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "Only content or resource Uris are supported for CommandButton"

    .line 708
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 712
    iput-object p1, p0, Landroidx/media3/session/CommandButton$Builder;->iconUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setPlayerCommand(I)Landroidx/media3/session/CommandButton$Builder;
    .locals 2

    .line 628
    iget-object v0, p0, Landroidx/media3/session/CommandButton$Builder;->sessionCommand:Landroidx/media3/session/SessionCommand;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "sessionCommand is already set. Only one of sessionCommand and playerCommand should be set."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 632
    iput p1, p0, Landroidx/media3/session/CommandButton$Builder;->playerCommand:I

    const/4 p1, 0x0

    .line 633
    iput-object p1, p0, Landroidx/media3/session/CommandButton$Builder;->parameter:Ljava/lang/Object;

    return-object p0
.end method

.method public setPlayerCommand(ILjava/lang/Object;)Landroidx/media3/session/CommandButton$Builder;
    .locals 2
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 657
    iget-object v0, p0, Landroidx/media3/session/CommandButton$Builder;->sessionCommand:Landroidx/media3/session/SessionCommand;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "sessionCommand is already set. Only one of sessionCommand and playerCommand should be set."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 661
    iput p1, p0, Landroidx/media3/session/CommandButton$Builder;->playerCommand:I

    .line 663
    invoke-static {p1}, Landroidx/media3/session/CommandButton;->access$200(I)I

    move-result p1

    invoke-static {p2, p1}, Landroidx/media3/session/CommandButton;->access$100(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/session/CommandButton$Builder;->parameter:Ljava/lang/Object;

    return-object p0
.end method

.method public setSessionCommand(Landroidx/media3/session/SessionCommand;)Landroidx/media3/session/CommandButton$Builder;
    .locals 2

    .line 571
    const-string v0, "sessionCommand should not be null."

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    iget v0, p0, Landroidx/media3/session/CommandButton$Builder;->playerCommand:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "playerCommands is already set. Only one of sessionCommand and playerCommand should be set."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 576
    iput-object p1, p0, Landroidx/media3/session/CommandButton$Builder;->sessionCommand:Landroidx/media3/session/SessionCommand;

    const/4 p1, 0x0

    .line 577
    iput-object p1, p0, Landroidx/media3/session/CommandButton$Builder;->parameter:Ljava/lang/Object;

    return-object p0
.end method

.method public setSessionCommand(Landroidx/media3/session/SessionCommand;Ljava/lang/Object;)Landroidx/media3/session/CommandButton$Builder;
    .locals 2
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 600
    const-string v0, "sessionCommand should not be null."

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    iget v0, p0, Landroidx/media3/session/CommandButton$Builder;->playerCommand:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "playerCommands is already set. Only one of sessionCommand and playerCommand should be set."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 605
    iput-object p1, p0, Landroidx/media3/session/CommandButton$Builder;->sessionCommand:Landroidx/media3/session/SessionCommand;

    .line 606
    iget p1, p1, Landroidx/media3/session/SessionCommand;->commandCode:I

    .line 608
    invoke-static {p1}, Landroidx/media3/session/CommandButton;->access$000(I)I

    move-result p1

    .line 607
    invoke-static {p2, p1}, Landroidx/media3/session/CommandButton;->access$100(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/session/CommandButton$Builder;->parameter:Ljava/lang/Object;

    return-object p0
.end method

.method public varargs setSlots([I)Landroidx/media3/session/CommandButton$Builder;
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 792
    array-length v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 793
    invoke-static {p1}, Lcom/google/common/primitives/ImmutableIntArray;->copyOf([I)Lcom/google/common/primitives/ImmutableIntArray;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/session/CommandButton$Builder;->slots:Lcom/google/common/primitives/ImmutableIntArray;

    return-object p0
.end method
