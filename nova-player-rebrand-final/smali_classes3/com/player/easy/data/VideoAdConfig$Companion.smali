.class public final Lcom/player/easy/data/VideoAdConfig$Companion;
.super Ljava/lang/Object;
.source "IpInformation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/player/easy/data/VideoAdConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005J\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/player/easy/data/VideoAdConfig$Companion;",
        "",
        "<init>",
        "()V",
        "empty",
        "Lcom/player/easy/data/VideoAdConfig;",
        "serializer",
        "Lkotlinx/serialization/KSerializer;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/player/easy/data/VideoAdConfig$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final empty()Lcom/player/easy/data/VideoAdConfig;
    .locals 7

    .line 119
    new-instance v0, Lcom/player/easy/data/VideoAdConfig;

    .line 125
    new-instance v1, Lcom/player/easy/data/AdConfig;

    const-string v5, ""

    const-string v6, ""

    const/4 v2, 0x0

    const-string v3, ""

    const-string v4, ""

    invoke-direct/range {v1 .. v6}, Lcom/player/easy/data/AdConfig;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v4, ""

    const/4 v6, 0x0

    move-object v5, v1

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, ""

    invoke-direct/range {v0 .. v6}, Lcom/player/easy/data/VideoAdConfig;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/player/easy/data/AdConfig;I)V

    return-object v0
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lcom/player/easy/data/VideoAdConfig;",
            ">;"
        }
    .end annotation

    .line 117
    sget-object v0, Lcom/player/easy/data/VideoAdConfig$$serializer;->INSTANCE:Lcom/player/easy/data/VideoAdConfig$$serializer;

    return-object v0
.end method
