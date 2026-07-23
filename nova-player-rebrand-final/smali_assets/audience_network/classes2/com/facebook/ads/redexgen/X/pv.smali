.class public final Lcom/facebook/ads/redexgen/X/pv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/24;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/3b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Commands"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/3P;
    }
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;

.field public static final A02:Lcom/facebook/ads/redexgen/X/23;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/23<",
            "Lcom/facebook/ads/redexgen/X/pv;",
            ">;"
        }
    .end annotation
.end field

.field public static final A03:Lcom/facebook/ads/redexgen/X/pv;

.field public static final A04:Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/2n;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3456
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "mula3CidaM"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "QXZvrsMqvoQg77WBvlve"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "clHaL9AVxqL"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "4"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "dTVzaj3Js"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "vbPIPyw6rptXOUyrUErD6RaDDuBNyqsV"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "dqUk2BmO1rRhKnsvPvl2vnYni3"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "mE8b9jVFwC8HjBTnnlrMONG37KhdcP6J"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/pv;->A01:[Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/3P;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/3P;-><init>()V

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3P;->A04()Lcom/facebook/ads/redexgen/X/pv;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/pv;->A03:Lcom/facebook/ads/redexgen/X/pv;

    .line 3457
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/pv;->A04:Ljava/lang/String;

    .line 3458
    new-instance v0, Lcom/facebook/ads/redexgen/X/pw;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/pw;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/pv;->A02:Lcom/facebook/ads/redexgen/X/23;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/2n;)V
    .locals 0

    .line 104928
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104929
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/pv;->A00:Lcom/facebook/ads/redexgen/X/2n;

    .line 104930
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/2n;Lcom/facebook/ads/redexgen/X/3N;)V
    .locals 0

    .line 104931
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/pv;-><init>(Lcom/facebook/ads/redexgen/X/2n;)V

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/pv;)Lcom/facebook/ads/redexgen/X/2n;
    .locals 0

    .line 104932
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/pv;->A00:Lcom/facebook/ads/redexgen/X/2n;

    return-object p0
.end method

.method public static A01(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/pv;
    .locals 6

    .line 104933
    sget-object v0, Lcom/facebook/ads/redexgen/X/pv;->A04:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 104934
    .local v0, "commands":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez p0, :cond_0

    .line 104935
    sget-object v0, Lcom/facebook/ads/redexgen/X/pv;->A03:Lcom/facebook/ads/redexgen/X/pv;

    return-object v0

    .line 104936
    :cond_0
    new-instance v5, Lcom/facebook/ads/redexgen/X/3P;

    invoke-direct {v5}, Lcom/facebook/ads/redexgen/X/3P;-><init>()V

    .line 104937
    .local v1, "builder":Lcom/facebook/ads/redexgen/X/3P;
    const/4 v4, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/pv;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x63

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/pv;->A01:[Ljava/lang/String;

    const-string v1, "mp2TMNIiilctnlK0CRpdI2bFoWxScr6M"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ge v4, v3, :cond_2

    .line 104938
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/3P;->A00(I)Lcom/facebook/ads/redexgen/X/3P;

    .line 104939
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 104940
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/3P;->A04()Lcom/facebook/ads/redexgen/X/pv;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic A02(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/pv;
    .locals 0

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/pv;->A01(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/pv;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 104941
    if-ne p0, p1, :cond_1

    .line 104942
    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/pv;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x53

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/pv;->A01:[Ljava/lang/String;

    const-string v1, "64Urjp6xISM"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "9byEEtKTR1"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 104943
    :cond_1
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/pv;

    if-nez v0, :cond_2

    .line 104944
    const/4 v0, 0x0

    return v0

    .line 104945
    :cond_2
    check-cast p1, Lcom/facebook/ads/redexgen/X/pv;

    .line 104946
    .local v0, "commands":Lcom/facebook/ads/redexgen/X/pv;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/pv;->A00:Lcom/facebook/ads/redexgen/X/2n;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/pv;->A00:Lcom/facebook/ads/redexgen/X/2n;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2n;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 104947
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pv;->A00:Lcom/facebook/ads/redexgen/X/2n;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2n;->hashCode()I

    move-result v0

    return v0
.end method
