.class final Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadableCallback;
.super Ljava/lang/Object;
.source "ImaServerSideAdInsertionMediaSource.java"

# interfaces
.implements Landroidx/media3/exoplayer/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StreamManagerLoadableCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media3/exoplayer/upstream/Loader$Callback<",
        "Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)V
    .locals 0

    .line 1074
    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadableCallback;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$1;)V
    .locals 0

    .line 1074
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadableCallback;-><init>(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)V

    return-void
.end method


# virtual methods
.method public onLoadCanceled(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;JJZ)V
    .locals 0

    .line 1090
    invoke-static {p6}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    return-void
.end method

.method public bridge synthetic onLoadCanceled(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJZ)V
    .locals 0

    .line 1074
    check-cast p1, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;

    invoke-virtual/range {p0 .. p6}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadableCallback;->onLoadCanceled(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;JJZ)V

    return-void
.end method

.method public onLoadCompleted(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;JJ)V
    .locals 0

    .line 1080
    iget-object p2, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadableCallback;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;->getContentUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-static {p2, p1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$3000(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;Landroid/net/Uri;)V

    return-void
.end method

.method public bridge synthetic onLoadCompleted(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJ)V
    .locals 0

    .line 1074
    check-cast p1, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;

    invoke-virtual/range {p0 .. p5}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadableCallback;->onLoadCompleted(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;JJ)V

    return-void
.end method

.method public onLoadError(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;
    .locals 0

    .line 1100
    iget-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadableCallback;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    invoke-static {p1, p6}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$3102(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;Ljava/io/IOException;)Ljava/io/IOException;

    .line 1101
    sget-object p1, Landroidx/media3/exoplayer/upstream/Loader;->DONT_RETRY:Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    return-object p1
.end method

.method public bridge synthetic onLoadError(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;
    .locals 0

    .line 1074
    check-cast p1, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;

    invoke-virtual/range {p0 .. p7}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadableCallback;->onLoadError(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onLoadStarted(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJI)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Landroidx/media3/exoplayer/upstream/Loader$Callback$-CC;->$default$onLoadStarted(Landroidx/media3/exoplayer/upstream/Loader$Callback;Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJI)V

    return-void
.end method
