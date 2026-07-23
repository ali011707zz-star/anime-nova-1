.class public final Lcom/google/ads/interactivemedia/v3/internal/zzafm;
.super Lcom/google/ads/interactivemedia/v3/internal/zzacs;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zzady;


# static fields
.field private static final zzd:Lcom/google/ads/interactivemedia/v3/internal/zzafm;


# instance fields
.field private zzb:Lcom/google/ads/interactivemedia/v3/internal/zzacy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzafm;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzafm;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzafm;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzafm;

    const-class v1, Lcom/google/ads/interactivemedia/v3/internal/zzafm;

    .line 2
    invoke-static {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzaD(Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/internal/zzacs;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzaG()Lcom/google/ads/interactivemedia/v3/internal/zzacy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzafm;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzacy;

    return-void
.end method

.method static synthetic zza()Lcom/google/ads/interactivemedia/v3/internal/zzafm;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzafm;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzafm;

    return-object v0
.end method


# virtual methods
.method protected final zzm(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x2

    if-eq p1, p3, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_0

    .line 1
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/zzafm;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzafm;

    return-object p1

    .line 5
    :cond_0
    throw p3

    .line 2
    :cond_1
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzafl;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzafl;-><init>([B)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzafm;

    .line 4
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzafm;-><init>()V

    return-object p1

    .line 1
    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const-string/jumbo p3, "zzb"

    const/4 v0, 0x0

    aput-object p3, p1, v0

    sget-object p3, Lcom/google/ads/interactivemedia/v3/internal/zzafn;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzacw;

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/ads/interactivemedia/v3/internal/zzafm;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzafm;

    const-string p3, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u082c"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzaE(Lcom/google/ads/interactivemedia/v3/internal/zzadx;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
