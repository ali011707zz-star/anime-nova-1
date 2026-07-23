.class Leu/davidea/flexibleadapter/FlexibleAdapter$AdapterDataObserver$1;
.super Ljava/lang/Object;
.source "FlexibleAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/davidea/flexibleadapter/FlexibleAdapter$AdapterDataObserver;->updateStickyHeader(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Leu/davidea/flexibleadapter/FlexibleAdapter$AdapterDataObserver;


# direct methods
.method constructor <init>(Leu/davidea/flexibleadapter/FlexibleAdapter$AdapterDataObserver;)V
    .locals 0

    .line 5473
    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$AdapterDataObserver$1;->this$1:Leu/davidea/flexibleadapter/FlexibleAdapter$AdapterDataObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 5476
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$AdapterDataObserver$1;->this$1:Leu/davidea/flexibleadapter/FlexibleAdapter$AdapterDataObserver;

    iget-object v0, v0, Leu/davidea/flexibleadapter/FlexibleAdapter$AdapterDataObserver;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->areHeadersSticky()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5477
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$AdapterDataObserver$1;->this$1:Leu/davidea/flexibleadapter/FlexibleAdapter$AdapterDataObserver;

    iget-object v0, v0, Leu/davidea/flexibleadapter/FlexibleAdapter$AdapterDataObserver;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-static {v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$700(Leu/davidea/flexibleadapter/FlexibleAdapter;)Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->updateOrClearHeader(Z)V

    :cond_0
    return-void
.end method
