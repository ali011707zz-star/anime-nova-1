.class public final Lcom/facebook/ads/redexgen/X/2T;
.super Lcom/facebook/ads/redexgen/X/CE;
.source ""


# static fields
.field public static A00:[Ljava/lang/String;

.field public static final A01:Lcom/facebook/ads/redexgen/X/2T;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 131
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ANJMxL2dVEGJTLC7oeKkV6T9we84s4Oq"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "bsixGsSn4PqKk"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "jxTtECMhzBYJHMErw25l2ff3lMO4RwMu"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "uDgUrMEYkzUN29QXytuemvQkva0saw9O"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "c42N5uBfi"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "PFrYthyEflcbSt"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "KPSLk9neqBQ4QSYjRklzOzcsXtMwSrs6"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "MRnhE549ujYh94xNdI3Vr4meod8jnA9z"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/2T;->A00:[Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/2T;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2T;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/2T;->A01:Lcom/facebook/ads/redexgen/X/2T;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9120
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/CE;-><init>()V

    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/2T;
    .locals 4

    .line 9121
    sget-object v3, Lcom/facebook/ads/redexgen/X/2T;->A01:Lcom/facebook/ads/redexgen/X/2T;

    sget-object v1, Lcom/facebook/ads/redexgen/X/2T;->A00:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/2T;->A00:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return-object v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
