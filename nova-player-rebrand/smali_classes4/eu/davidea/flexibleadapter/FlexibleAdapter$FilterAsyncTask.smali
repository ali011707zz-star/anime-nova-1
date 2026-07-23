.class Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;
.super Landroid/os/AsyncTask;
.source "FlexibleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/davidea/flexibleadapter/FlexibleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilterAsyncTask"
.end annotation


# instance fields
.field private final newItems:Ljava/util/List;

.field final synthetic this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

.field private final what:I


# direct methods
.method constructor <init>(Leu/davidea/flexibleadapter/FlexibleAdapter;ILjava/util/List;)V
    .locals 0

    .line 5590
    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 5591
    iput p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->what:I

    .line 5593
    new-instance p1, Ljava/util/ArrayList;

    if-nez p3, :cond_0

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->newItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 5584
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .line 5620
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$1702(Leu/davidea/flexibleadapter/FlexibleAdapter;J)J

    .line 5621
    iget p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->what:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 5629
    :cond_0
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object p1, p1, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v0, "doInBackground - started FILTER"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5630
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->newItems:Ljava/util/List;

    invoke-static {p1, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$2000(Leu/davidea/flexibleadapter/FlexibleAdapter;Ljava/util/List;)V

    .line 5631
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object p1, p1, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v0, "doInBackground - ended FILTER"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5623
    :cond_1
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object p1, p1, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v0, "doInBackground - started UPDATE"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5624
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->newItems:Ljava/util/List;

    invoke-static {p1, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$1800(Leu/davidea/flexibleadapter/FlexibleAdapter;Ljava/util/List;)V

    .line 5625
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->newItems:Ljava/util/List;

    sget-object v2, Leu/davidea/flexibleadapter/Payload;->CHANGE:Leu/davidea/flexibleadapter/Payload;

    invoke-static {p1, v0, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$1900(Leu/davidea/flexibleadapter/FlexibleAdapter;Ljava/util/List;Leu/davidea/flexibleadapter/Payload;)V

    .line 5626
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object p1, p1, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v0, "doInBackground - ended UPDATE"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected onCancelled()V
    .locals 3

    .line 5615
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object v0, v0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "FilterAsyncTask cancelled!"

    invoke-virtual {v0, v2, v1}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 5584
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 5639
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-static {p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$2100(Leu/davidea/flexibleadapter/FlexibleAdapter;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-static {p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$2200(Leu/davidea/flexibleadapter/FlexibleAdapter;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 5641
    :cond_0
    iget p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 5649
    :cond_1
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    sget-object v0, Leu/davidea/flexibleadapter/Payload;->FILTER:Leu/davidea/flexibleadapter/Payload;

    invoke-static {p1, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$2300(Leu/davidea/flexibleadapter/FlexibleAdapter;Leu/davidea/flexibleadapter/Payload;)V

    .line 5650
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->onPostFilter()V

    goto :goto_0

    .line 5644
    :cond_2
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    sget-object v0, Leu/davidea/flexibleadapter/Payload;->CHANGE:Leu/davidea/flexibleadapter/Payload;

    invoke-static {p1, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$2300(Leu/davidea/flexibleadapter/FlexibleAdapter;Leu/davidea/flexibleadapter/Payload;)V

    .line 5645
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->onPostUpdate()V

    .line 5654
    :cond_3
    :goto_0
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$2402(Leu/davidea/flexibleadapter/FlexibleAdapter;Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;)Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .line 5598
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-static {v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$1600(Leu/davidea/flexibleadapter/FlexibleAdapter;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5599
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object v0, v0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v2, "Cannot filter while endlessLoading"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Leu/davidea/flexibleadapter/utils/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 5600
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 5604
    :cond_0
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isRestoreInTime()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5605
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object v0, v0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v2, "Removing all deleted items before filtering/updating"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5606
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->newItems:Ljava/util/List;

    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getDeletedItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 5607
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    return-void
.end method
