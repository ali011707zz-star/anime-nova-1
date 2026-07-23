.class public abstract Lcom/facebook/ads/redexgen/X/Pg;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Ph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewCompatBaseImpl"
.end annotation


# static fields
.field public static A00:Ljava/lang/reflect/Field;

.field public static A01:Z

.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1552
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "02HXzqXk73QVshK"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Vd3PIQVGbymKr1peOQp46bHqBe5g9xLl"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "HcoaSp9EGPDRlMz"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "LE49K9mUXs4bvL0Dhr0uWsVmH5LUwBm4"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "LDPLoHz6UrHGmx6GMbvpIivkJ6REIOLV"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "AJsKzOma0c3h"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "nSSDOEXzoGvtoIqz4QDa0TtkmnPlbH1G"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "jHxdDI4CDuwq"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Pg;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Pg;->A01()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/Pg;->A01:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Pg;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1d

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

    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Pg;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0x1ct
        -0x48t
        -0x26t
        -0x26t
        -0x24t
        -0x16t
        -0x16t
        -0x20t
        -0x27t
        -0x20t
        -0x1dt
        -0x20t
        -0x15t
        -0x10t
        -0x45t
        -0x24t
        -0x1dt
        -0x24t
        -0x22t
        -0x28t
        -0x15t
        -0x24t
    .end array-data
.end method


# virtual methods
.method public abstract A02(Landroid/view/View;)I
.end method

.method public abstract A03(Landroid/view/View;)I
.end method

.method public abstract A04(Landroid/view/View;)I
.end method

.method public abstract A05(Landroid/view/View;)I
.end method

.method public abstract A06(Landroid/view/View;)Landroid/view/Display;
.end method

.method public abstract A07(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Py;)Lcom/facebook/ads/redexgen/X/Py;
.end method

.method public abstract A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Py;)Lcom/facebook/ads/redexgen/X/Py;
.end method

.method public abstract A09(Landroid/view/View;)V
.end method

.method public abstract A0A(Landroid/view/View;)V
.end method

.method public abstract A0B(Landroid/view/View;I)V
.end method

.method public abstract A0C(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
.end method

.method public final A0D(Landroid/view/View;Lcom/facebook/ads/redexgen/X/PL;)V
    .locals 1

    .line 58128
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 58129
    return-void

    .line 58130
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/PL;->A00()Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract A0E(Landroid/view/View;Lcom/facebook/ads/redexgen/X/PR;)V
.end method

.method public abstract A0F(Landroid/view/View;Ljava/lang/Runnable;)V
.end method

.method public abstract A0G(Landroid/view/View;Ljava/lang/Runnable;J)V
.end method

.method public final A0H(Landroid/view/View;)Z
    .locals 6

    .line 58131
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/Pg;->A01:Z

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 58132
    return v5

    .line 58133
    :cond_0
    sget-object v3, Lcom/facebook/ads/redexgen/X/Pg;->A00:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Pg;->A03:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x54

    if-eq v1, v0, :cond_1

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Pg;->A03:[Ljava/lang/String;

    const-string v1, "Q1ruOHxOk6WILPvKf2GjHGHRzmp539Hk"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-nez v3, :cond_3

    .line 58134
    :try_start_0
    const-class v3, Landroid/view/View;

    const/4 v2, 0x0

    const/16 v1, 0x16

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Pg;->A00(III)Ljava/lang/String;

    move-result-object v0

    .line 58135
    invoke-virtual {v3, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Pg;->A00:Ljava/lang/reflect/Field;

    .line 58136
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pg;->A00:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    goto :goto_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58137
    .local v0, "t":Ljava/lang/Throwable;
    :catchall_0
    sput-boolean v4, Lcom/facebook/ads/redexgen/X/Pg;->A01:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/Pg;->A03:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x54

    if-eq v1, v0, :cond_2

    goto :goto_0

    .line 58138
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Pg;->A03:[Ljava/lang/String;

    const-string v1, "nDS37f2fXP1nkU7"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "CEc31ZmnNMQB0dp"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return v5

    .line 58139
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_3
    :goto_1
    :try_start_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pg;->A00:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v5, 0x1

    :cond_4
    return v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 58140
    .restart local v0    # "t":Ljava/lang/Throwable;
    :catchall_1
    sput-boolean v4, Lcom/facebook/ads/redexgen/X/Pg;->A01:Z

    .line 58141
    return v5
.end method

.method public abstract A0I(Landroid/view/View;)Z
.end method

.method public abstract A0J(Landroid/view/View;)Z
.end method
