.class public final Lcom/google/ads/interactivemedia/v3/internal/zzaa;
.super Lcom/google/ads/interactivemedia/v3/internal/zzacs;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zzady;


# static fields
.field private static final zzi:Lcom/google/ads/interactivemedia/v3/internal/zzaa;


# instance fields
.field private zzb:I

.field private zzd:Z

.field private zze:I

.field private zzf:Z

.field private zzg:Z

.field private zzh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzaa;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzaa;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzaa;->zzi:Lcom/google/ads/interactivemedia/v3/internal/zzaa;

    const-class v1, Lcom/google/ads/interactivemedia/v3/internal/zzaa;

    invoke-static {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzaD(Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/internal/zzacs;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;-><init>()V

    const/16 v0, 0x1388

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaa;->zze:I

    return-void
.end method

.method public static zzf()Lcom/google/ads/interactivemedia/v3/internal/zzz;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzaa;->zzi:Lcom/google/ads/interactivemedia/v3/internal/zzaa;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzax()Lcom/google/ads/interactivemedia/v3/internal/zzaco;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzz;

    return-object v0
.end method

.method public static zzg()Lcom/google/ads/interactivemedia/v3/internal/zzaa;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzaa;->zzi:Lcom/google/ads/interactivemedia/v3/internal/zzaa;

    return-object v0
.end method

.method static synthetic zzi()Lcom/google/ads/interactivemedia/v3/internal/zzaa;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzaa;->zzi:Lcom/google/ads/interactivemedia/v3/internal/zzaa;

    return-object v0
.end method


# virtual methods
.method public final zza()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaa;->zzd:Z

    return v0
.end method

.method public final zzb()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaa;->zze:I

    return v0
.end method

.method public final zzc()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaa;->zzf:Z

    return v0
.end method

.method public final zzd()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaa;->zzg:Z

    return v0
.end method

.method public final zze()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaa;->zzh:Z

    return v0
.end method

.method final synthetic zzh(Z)V
    .locals 1

    .line 0
    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaa;->zzb:I

    const/4 v0, 0x1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaa;->zzb:I

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaa;->zzd:Z

    return-void
.end method

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
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/zzaa;->zzi:Lcom/google/ads/interactivemedia/v3/internal/zzaa;

    return-object p1

    .line 4
    :cond_0
    throw p2

    .line 2
    :cond_1
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzz;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzz;-><init>([B)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzaa;

    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzaa;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x6

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

    sget-object p2, Lcom/google/ads/interactivemedia/v3/internal/zzaa;->zzi:Lcom/google/ads/interactivemedia/v3/internal/zzaa;

    const-string p3, "\u0004\u0005\u0000\u0001\u0001\u0006\u0005\u0000\u0000\u0000\u0001\u1007\u0000\u0003\u1004\u0001\u0004\u1007\u0002\u0005\u1007\u0003\u0006\u1007\u0004"

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
