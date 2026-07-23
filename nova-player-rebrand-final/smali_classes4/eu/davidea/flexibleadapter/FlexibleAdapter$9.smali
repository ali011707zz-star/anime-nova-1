.class Leu/davidea/flexibleadapter/FlexibleAdapter$9;
.super Ljava/lang/Object;
.source "FlexibleAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/davidea/flexibleadapter/FlexibleAdapter;->addItemWithDelay(ILeu/davidea/flexibleadapter/items/IFlexible;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

.field final synthetic val$item:Leu/davidea/flexibleadapter/items/IFlexible;

.field final synthetic val$position:I

.field final synthetic val$scrollToPosition:Z


# direct methods
.method constructor <init>(Leu/davidea/flexibleadapter/FlexibleAdapter;ILeu/davidea/flexibleadapter/items/IFlexible;Z)V
    .locals 0

    .line 2938
    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$9;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iput p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$9;->val$position:I

    iput-object p3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$9;->val$item:Leu/davidea/flexibleadapter/items/IFlexible;

    iput-boolean p4, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$9;->val$scrollToPosition:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2941
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$9;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$9;->val$position:I

    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$9;->val$item:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->addItem(ILeu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$9;->val$scrollToPosition:Z

    if-eqz v0, :cond_0

    .line 2942
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$9;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$9;->val$position:I

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$900(Leu/davidea/flexibleadapter/FlexibleAdapter;II)V

    :cond_0
    return-void
.end method
