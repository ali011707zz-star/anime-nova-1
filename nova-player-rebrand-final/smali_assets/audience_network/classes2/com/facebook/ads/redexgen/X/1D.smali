.class public final Lcom/facebook/ads/redexgen/X/1D;
.super Lcom/facebook/ads/redexgen/X/1o;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Aa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/in;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/1o;",
        "Lcom/facebook/ads/redexgen/X/Aa<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "()Ljava/lang/Boolean;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final A00:Lcom/facebook/ads/redexgen/X/1D;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/ads/redexgen/X/1D;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/1D;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/1D;->A00:Lcom/facebook/ads/redexgen/X/1D;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/1o;-><init>(I)V

    return-void
.end method

.method private final A00()Ljava/lang/Boolean;
    .locals 1

    .line 5033
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic AAJ()Ljava/lang/Object;
    .locals 1

    .line 5034
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1D;->A00()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
