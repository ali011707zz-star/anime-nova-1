.class public Leu/davidea/flexibleadapter/FlexibleAdapter$HandlerCallback;
.super Ljava/lang/Object;
.source "FlexibleAdapter.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/davidea/flexibleadapter/FlexibleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HandlerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;


# direct methods
.method public constructor <init>(Leu/davidea/flexibleadapter/FlexibleAdapter;)V
    .locals 0

    .line 5737
    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$HandlerCallback;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 5741
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/16 p1, 0x8

    if-eq v0, p1, :cond_0

    return v1

    .line 5751
    :cond_0
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$HandlerCallback;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-static {p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$2500(Leu/davidea/flexibleadapter/FlexibleAdapter;)V

    return v2

    .line 5744
    :cond_1
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$HandlerCallback;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-static {v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$2400(Leu/davidea/flexibleadapter/FlexibleAdapter;)Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5745
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$HandlerCallback;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-static {v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$2400(Leu/davidea/flexibleadapter/FlexibleAdapter;)Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 5747
    :cond_2
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$HandlerCallback;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    new-instance v3, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;

    iget-object v4, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$HandlerCallback;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget v5, p1, Landroid/os/Message;->what:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-direct {v3, v4, v5, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;-><init>(Leu/davidea/flexibleadapter/FlexibleAdapter;ILjava/util/List;)V

    invoke-static {v0, v3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$2402(Leu/davidea/flexibleadapter/FlexibleAdapter;Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;)Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;

    .line 5748
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$HandlerCallback;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-static {p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$2400(Leu/davidea/flexibleadapter/FlexibleAdapter;)Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;

    move-result-object p1

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v2
.end method
