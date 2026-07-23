.class public final Lcom/player/easy/data/OkHttpException;
.super Ljava/lang/RuntimeException;
.source "OkHttpExtensions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/player/easy/data/OkHttpException$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u0000 \u000f2\u00060\u0001j\u0002`\u0002:\u0001\u000fB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u000cX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/player/easy/data/OkHttpException;",
        "Ljava/lang/RuntimeException;",
        "Lkotlin/RuntimeException;",
        "response",
        "Lokhttp3/Response;",
        "<init>",
        "(Lokhttp3/Response;)V",
        "code",
        "",
        "getCode",
        "()I",
        "message",
        "",
        "getMessage",
        "()Ljava/lang/String;",
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


# static fields
.field public static final Companion:Lcom/player/easy/data/OkHttpException$Companion;


# instance fields
.field private final code:I

.field private final message:Ljava/lang/String;

.field private final transient response:Lokhttp3/Response;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lcom/player/easy/data/OkHttpException$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/player/easy/data/OkHttpException$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/player/easy/data/OkHttpException;->Companion:Lcom/player/easy/data/OkHttpException$Companion;

    return-void
.end method

.method public constructor <init>(Lokhttp3/Response;)V
    .locals 1

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    sget-object v0, Lcom/player/easy/data/OkHttpException;->Companion:Lcom/player/easy/data/OkHttpException$Companion;

    invoke-static {v0, p1}, Lcom/player/easy/data/OkHttpException$Companion;->access$getMessage(Lcom/player/easy/data/OkHttpException$Companion;Lokhttp3/Response;)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/player/easy/data/OkHttpException;->response:Lokhttp3/Response;

    .line 72
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v0

    iput v0, p0, Lcom/player/easy/data/OkHttpException;->code:I

    .line 73
    invoke-virtual {p1}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/player/easy/data/OkHttpException;->message:Ljava/lang/String;

    return-void
.end method

.method private static final getMessage(Lokhttp3/Response;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 0
    sget-object v0, Lcom/player/easy/data/OkHttpException;->Companion:Lcom/player/easy/data/OkHttpException$Companion;

    invoke-static {v0, p0}, Lcom/player/easy/data/OkHttpException$Companion;->access$getMessage(Lcom/player/easy/data/OkHttpException$Companion;Lokhttp3/Response;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/player/easy/data/OkHttpException;->code:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/player/easy/data/OkHttpException;->message:Ljava/lang/String;

    return-object v0
.end method
