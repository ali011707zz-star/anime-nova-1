.class public final enum Lcom/facebook/ads/redexgen/X/iK;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/redexgen/X/iK;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/facebook/kotlin/compilerplugins/dataclassgenerate/annotation/Mode;",
        "",
        "(Ljava/lang/String;I)V",
        "KEEP",
        "OMIT",
        "fbandroid.java.com.facebook.kotlin.compilerplugins.dataclassgenerate.annotation.dataclassgenerate-annotation"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static A00:[B

.field public static final synthetic A01:Lcom/facebook/ads/redexgen/X/Ac;

.field public static final synthetic A02:[Lcom/facebook/ads/redexgen/X/iK;

.field public static final enum A03:Lcom/facebook/ads/redexgen/X/iK;

.field public static final enum A04:Lcom/facebook/ads/redexgen/X/iK;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2944
    invoke-static {}, Lcom/facebook/ads/redexgen/X/iK;->A01()V

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iK;->A00(III)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/iK;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/iK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/iK;->A03:Lcom/facebook/ads/redexgen/X/iK;

    .line 2945
    const/4 v2, 0x4

    const/4 v1, 0x4

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iK;->A00(III)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/iK;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/iK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/iK;->A04:Lcom/facebook/ads/redexgen/X/iK;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/iK;->A02()[Lcom/facebook/ads/redexgen/X/iK;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/iK;->A02:[Lcom/facebook/ads/redexgen/X/iK;

    sget-object v0, Lcom/facebook/ads/redexgen/X/iK;->A02:[Lcom/facebook/ads/redexgen/X/iK;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/qd;->A01([Ljava/lang/Enum;)Lcom/facebook/ads/redexgen/X/Ac;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/iK;->A01:Lcom/facebook/ads/redexgen/X/Ac;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 86547
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/iK;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x44

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/iK;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x54t
        -0x5at
        -0x5at
        -0x4ft
        -0x40t
        -0x42t
        -0x46t
        -0x3bt
    .end array-data
.end method

.method public static final synthetic A02()[Lcom/facebook/ads/redexgen/X/iK;
    .locals 3

    const/4 v0, 0x2

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/iK;

    sget-object v1, Lcom/facebook/ads/redexgen/X/iK;->A03:Lcom/facebook/ads/redexgen/X/iK;

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/iK;->A04:Lcom/facebook/ads/redexgen/X/iK;

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/iK;
    .locals 1

    const-class v0, Lcom/facebook/ads/redexgen/X/iK;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/iK;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/redexgen/X/iK;
    .locals 1

    sget-object v0, Lcom/facebook/ads/redexgen/X/iK;->A02:[Lcom/facebook/ads/redexgen/X/iK;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/iK;

    return-object v0
.end method
