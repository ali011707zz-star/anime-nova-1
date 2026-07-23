.class Leu/davidea/flexibleadapter/FlexibleAdapter$2;
.super Ljava/lang/Object;
.source "FlexibleAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/davidea/flexibleadapter/FlexibleAdapter;->addScrollableFooterWithDelay(Leu/davidea/flexibleadapter/items/IFlexible;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

.field final synthetic val$footerItem:Leu/davidea/flexibleadapter/items/IFlexible;

.field final synthetic val$scrollToPosition:Z


# direct methods
.method constructor <init>(Leu/davidea/flexibleadapter/FlexibleAdapter;Leu/davidea/flexibleadapter/items/IFlexible;Z)V
    .locals 0

    .line 1089
    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$2;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iput-object p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$2;->val$footerItem:Leu/davidea/flexibleadapter/items/IFlexible;

    iput-boolean p3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$2;->val$scrollToPosition:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1092
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$2;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$2;->val$footerItem:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-virtual {v0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->addScrollableFooter(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$2;->val$scrollToPosition:Z

    if-eqz v0, :cond_0

    .line 1093
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$2;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$2;->val$footerItem:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-virtual {v0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result v1

    invoke-virtual {v0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->smoothScrollToPosition(I)V

    :cond_0
    return-void
.end method
