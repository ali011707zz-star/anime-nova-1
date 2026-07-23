.class public final Lcom/player/easy/util/AdBlockerUtil;
.super Ljava/lang/Object;
.source "AdBlockerUtil.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/player/easy/util/AdBlockerUtil$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010H\u0007J\u0010\u0010\u0011\u001a\u00020\u00052\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0007J\u0006\u0010\u0013\u001a\u00020\u0014J\u0010\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0010\u0010\u0018\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u0019H\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082D\u00a2\u0006\u0002\n\u0000R*\u0010\u0008\u001a\u001e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00050\tj\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0005`\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/player/easy/util/AdBlockerUtil;",
        "",
        "<init>",
        "()V",
        "isStillLoading",
        "",
        "mTag",
        "",
        "hostMap",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "initialize",
        "",
        "context",
        "Landroid/content/Context;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "isAd",
        "url",
        "createEmptyResponse",
        "Landroid/webkit/WebResourceResponse;",
        "loadHostsFromInputStream",
        "inputStream",
        "Ljava/io/InputStream;",
        "loadHostFromServer",
        "Lkotlinx/coroutines/flow/Flow;",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAdBlockerUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdBlockerUtil.kt\ncom/player/easy/util/AdBlockerUtil\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,106:1\n1342#2,2:107\n*S KotlinDebug\n*F\n+ 1 AdBlockerUtil.kt\ncom/player/easy/util/AdBlockerUtil\n*L\n67#1:107,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/player/easy/util/AdBlockerUtil$Companion;

.field private static final mInstance$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/player/easy/util/AdBlockerUtil;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final hostMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private isStillLoading:Z

.field private final mTag:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$3V-TQ9k2-VNI0EVUjgUTT1KMuYQ(Lokio/BufferedSource;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/player/easy/util/AdBlockerUtil;->loadHostsFromInputStream$lambda$0$0(Lokio/BufferedSource;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oCsrbdkM-7ym7SV2pWWTtfp61PU()Lcom/player/easy/util/AdBlockerUtil;
    .locals 1

    .line 0
    invoke-static {}, Lcom/player/easy/util/AdBlockerUtil;->mInstance_delegate$lambda$0()Lcom/player/easy/util/AdBlockerUtil;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/player/easy/util/AdBlockerUtil$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/player/easy/util/AdBlockerUtil$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/player/easy/util/AdBlockerUtil;->Companion:Lcom/player/easy/util/AdBlockerUtil$Companion;

    .line 27
    new-instance v0, Lcom/player/easy/util/AdBlockerUtil$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/player/easy/util/AdBlockerUtil$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/player/easy/util/AdBlockerUtil;->mInstance$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "AdBlockerUtil"

    iput-object v0, p0, Lcom/player/easy/util/AdBlockerUtil;->mTag:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/player/easy/util/AdBlockerUtil;->hostMap:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic access$getMInstance$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 19
    sget-object v0, Lcom/player/easy/util/AdBlockerUtil;->mInstance$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$loadHostFromServer(Lcom/player/easy/util/AdBlockerUtil;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/player/easy/util/AdBlockerUtil;->loadHostFromServer()Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadHostsFromInputStream(Lcom/player/easy/util/AdBlockerUtil;Ljava/io/InputStream;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/player/easy/util/AdBlockerUtil;->loadHostsFromInputStream(Ljava/io/InputStream;)V

    return-void
.end method

.method public static synthetic initialize$default(Lcom/player/easy/util/AdBlockerUtil;Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 35
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/player/easy/util/AdBlockerUtil;->initialize(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;)V

    return-void
.end method

.method private final loadHostFromServer()Lkotlinx/coroutines/flow/Flow;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlinx/coroutines/ExperimentalCoroutinesApi;
    .end annotation

    .line 74
    new-instance v0, Lcom/player/easy/util/AdBlockerUtil$loadHostFromServer$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/player/easy/util/AdBlockerUtil$loadHostFromServer$1;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    return-object v0
.end method

.method private final loadHostsFromInputStream(Ljava/io/InputStream;)V
    .locals 4

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/player/easy/util/AdBlockerUtil;->isStillLoading:Z

    .line 64
    iget-object v0, p0, Lcom/player/easy/util/AdBlockerUtil;->hostMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 66
    invoke-static {p1}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p1

    .line 67
    :try_start_0
    new-instance v0, Lcom/player/easy/util/AdBlockerUtil$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/player/easy/util/AdBlockerUtil$$ExternalSyntheticLambda1;-><init>(Lokio/BufferedSource;)V

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->generateSequence(Lkotlin/jvm/functions/Function0;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 107
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 67
    iget-object v2, p0, Lcom/player/easy/util/AdBlockerUtil;->hostMap:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 68
    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 66
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 70
    iput-boolean p1, p0, Lcom/player/easy/util/AdBlockerUtil;->isStillLoading:Z

    return-void

    .line 66
    :goto_1
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static final loadHostsFromInputStream$lambda$0$0(Lokio/BufferedSource;)Ljava/lang/String;
    .locals 0

    .line 67
    invoke-interface {p0}, Lokio/BufferedSource;->readUtf8Line()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final mInstance_delegate$lambda$0()Lcom/player/easy/util/AdBlockerUtil;
    .locals 1

    .line 27
    new-instance v0, Lcom/player/easy/util/AdBlockerUtil;

    invoke-direct {v0}, Lcom/player/easy/util/AdBlockerUtil;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final createEmptyResponse()Landroid/webkit/WebResourceResponse;
    .locals 4

    .line 59
    new-instance v0, Landroid/webkit/WebResourceResponse;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const-string v3, "getBytes(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v2, "text/plain"

    const-string v3, "utf-8"

    invoke-direct {v0, v2, v3, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public final initialize(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 7
    .annotation build Lkotlinx/coroutines/ExperimentalCoroutinesApi;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v4, Lcom/player/easy/util/AdBlockerUtil$initialize$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/player/easy/util/AdBlockerUtil$initialize$1;-><init>(Lcom/player/easy/util/AdBlockerUtil;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final isAd(Ljava/lang/String;)Z
    .locals 2

    .line 49
    iget-boolean v0, p0, Lcom/player/easy/util/AdBlockerUtil;->isStillLoading:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    return v1

    .line 54
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    return v1

    .line 55
    :cond_2
    iget-object v0, p0, Lcom/player/easy/util/AdBlockerUtil;->hostMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
