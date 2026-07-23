.class Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;
.super Ljava/lang/Object;
.source "FlexibleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/davidea/flexibleadapter/FlexibleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreInfo"
.end annotation


# instance fields
.field item:Leu/davidea/flexibleadapter/items/IFlexible;

.field refItem:Leu/davidea/flexibleadapter/items/IFlexible;

.field refPosition:I

.field relativePosition:I

.field final synthetic this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;


# direct methods
.method public constructor <init>(Leu/davidea/flexibleadapter/FlexibleAdapter;Leu/davidea/flexibleadapter/items/IFlexible;Leu/davidea/flexibleadapter/items/IFlexible;)V
    .locals 1

    const/4 v0, -0x1

    .line 5519
    invoke-direct {p0, p1, p2, p3, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;-><init>(Leu/davidea/flexibleadapter/FlexibleAdapter;Leu/davidea/flexibleadapter/items/IFlexible;Leu/davidea/flexibleadapter/items/IFlexible;I)V

    return-void
.end method

.method public constructor <init>(Leu/davidea/flexibleadapter/FlexibleAdapter;Leu/davidea/flexibleadapter/items/IFlexible;Leu/davidea/flexibleadapter/items/IFlexible;I)V
    .locals 0

    .line 5525
    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 5509
    iput p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->refPosition:I

    .line 5526
    iput-object p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->refItem:Leu/davidea/flexibleadapter/items/IFlexible;

    .line 5527
    iput-object p3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->item:Leu/davidea/flexibleadapter/items/IFlexible;

    .line 5528
    iput p4, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->relativePosition:I

    return-void
.end method


# virtual methods
.method public getRestorePosition(Z)I
    .locals 4

    .line 5535
    iget v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->refPosition:I

    if-gez v0, :cond_0

    .line 5536
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->refItem:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-virtual {v0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result v0

    iput v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->refPosition:I

    .line 5538
    :cond_0
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->refPosition:I

    invoke-virtual {v0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 5539
    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v2, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpandable(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5541
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->refPosition:I

    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getCurrentChildren(Leu/davidea/flexibleadapter/items/IExpandable;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v2, v0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$1400(Leu/davidea/flexibleadapter/FlexibleAdapter;ILjava/util/List;I)I

    goto :goto_0

    .line 5542
    :cond_1
    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v2, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpanded(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-nez p1, :cond_2

    .line 5543
    iget p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->refPosition:I

    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    invoke-static {v2, v1, v3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$1500(Leu/davidea/flexibleadapter/FlexibleAdapter;Leu/davidea/flexibleadapter/items/IExpandable;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v3

    add-int/2addr p1, v0

    iput p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->refPosition:I

    goto :goto_0

    .line 5545
    :cond_2
    iget p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->refPosition:I

    add-int/2addr p1, v3

    iput p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->refPosition:I

    .line 5547
    :goto_0
    iget p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->refPosition:I

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 5552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RestoreInfo[item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->item:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", refItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->refItem:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
