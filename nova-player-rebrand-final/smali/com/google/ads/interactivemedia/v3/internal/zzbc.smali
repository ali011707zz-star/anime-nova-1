.class public final Lcom/google/ads/interactivemedia/v3/internal/zzbc;
.super Lcom/google/ads/interactivemedia/v3/internal/zzacs;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zzady;


# static fields
.field private static final zzn:Lcom/google/ads/interactivemedia/v3/internal/zzbc;


# instance fields
.field private zzb:I

.field private zzd:J

.field private zze:I

.field private zzf:Z

.field private zzg:Lcom/google/ads/interactivemedia/v3/internal/zzacy;

.field private zzh:J

.field private zzi:Z

.field private zzj:Lcom/google/ads/interactivemedia/v3/internal/zzada;

.field private zzk:J

.field private zzl:J

.field private zzm:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzbc;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzbc;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzbc;->zzn:Lcom/google/ads/interactivemedia/v3/internal/zzbc;

    const-class v1, Lcom/google/ads/interactivemedia/v3/internal/zzbc;

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

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzbc;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzacy;

    .line 3
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzaH()Lcom/google/ads/interactivemedia/v3/internal/zzada;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzbc;->zzj:Lcom/google/ads/interactivemedia/v3/internal/zzada;

    return-void
.end method

.method static synthetic zza()Lcom/google/ads/interactivemedia/v3/internal/zzbc;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzbc;->zzn:Lcom/google/ads/interactivemedia/v3/internal/zzbc;

    return-object v0
.end method


# virtual methods
.method protected final zzm(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/4 p2, 0x0

    if-eq p1, v0, :cond_1

    if-ne p1, p3, :cond_0

    .line 1
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/zzbc;->zzn:Lcom/google/ads/interactivemedia/v3/internal/zzbc;

    return-object p1

    .line 5
    :cond_0
    throw p2

    .line 2
    :cond_1
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzbb;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzbb;-><init>([B)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzbc;

    .line 4
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzbc;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0xc

    .line 1
    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo v3, "zzb"

    const/4 v4, 0x0

    aput-object v3, p1, v4

    const-string/jumbo v3, "zzd"

    aput-object v3, p1, p2

    const-string/jumbo p2, "zze"

    aput-object p2, p1, v2

    const-string/jumbo p2, "zzf"

    aput-object p2, p1, v1

    const-string/jumbo p2, "zzg"

    aput-object p2, p1, v0

    const-string/jumbo p2, "zzh"

    aput-object p2, p1, p3

    const-string/jumbo p2, "zzi"

    const/4 p3, 0x6

    aput-object p2, p1, p3

    const-string/jumbo p2, "zzj"

    const/4 p3, 0x7

    aput-object p2, p1, p3

    const-class p2, Lcom/google/ads/interactivemedia/v3/internal/zzbg;

    const/16 p3, 0x8

    aput-object p2, p1, p3

    const-string/jumbo p2, "zzk"

    const/16 p3, 0x9

    aput-object p2, p1, p3

    const-string/jumbo p2, "zzl"

    const/16 p3, 0xa

    aput-object p2, p1, p3

    const-string/jumbo p2, "zzm"

    const/16 p3, 0xb

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/ads/interactivemedia/v3/internal/zzbc;->zzn:Lcom/google/ads/interactivemedia/v3/internal/zzbc;

    const-string p3, "\u0001\n\u0000\u0001\u0001\n\n\u0000\u0002\u0000\u0001\u1002\u0000\u0002\u1004\u0001\u0003\u1007\u0002\u0004\u0016\u0005\u1003\u0003\u0006\u1007\u0004\u0007\u001b\u0008\u1002\u0005\t\u1002\u0006\n\u1002\u0007"

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
