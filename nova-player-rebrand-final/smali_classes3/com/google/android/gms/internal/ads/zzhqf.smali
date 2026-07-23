.class public final Lcom/google/android/gms/internal/ads/zzhqf;
.super Lcom/google/android/gms/internal/ads/zzibr;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzidd;


# static fields
.field private static final zzd:Lcom/google/android/gms/internal/ads/zzhqf;

.field private static volatile zze:Lcom/google/android/gms/internal/ads/zzidk;


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Lcom/google/android/gms/internal/ads/zzian;

.field private zzc:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhqf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhqf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhqf;->zzd:Lcom/google/android/gms/internal/ads/zzhqf;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhqf;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbu(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzibr;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzibr;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhqf;->zza:Ljava/lang/String;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzian;->zza:Lcom/google/android/gms/internal/ads/zzian;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhqf;->zzb:Lcom/google/android/gms/internal/ads/zzian;

    return-void
.end method

.method public static zzd([BLcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzhqf;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhqf;->zzd:Lcom/google/android/gms/internal/ads/zzhqf;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzibr;->zzbV(Lcom/google/android/gms/internal/ads/zzibr;[BLcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzhqf;

    return-object p0
.end method

.method public static zze()Lcom/google/android/gms/internal/ads/zzhqe;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhqf;->zzd:Lcom/google/android/gms/internal/ads/zzhqf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbn()Lcom/google/android/gms/internal/ads/zzibl;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhqe;

    return-object v0
.end method

.method public static zzh()Lcom/google/android/gms/internal/ads/zzhqf;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhqf;->zzd:Lcom/google/android/gms/internal/ads/zzhqf;

    return-object v0
.end method

.method static synthetic zzl()Lcom/google/android/gms/internal/ads/zzhqf;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhqf;->zzd:Lcom/google/android/gms/internal/ads/zzhqf;

    return-object v0
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhqf;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzian;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhqf;->zzb:Lcom/google/android/gms/internal/ads/zzian;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzhqy;
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhqf;->zzc:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhqy;->zzb(I)Lcom/google/android/gms/internal/ads/zzhqy;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhqy;->zzg:Lcom/google/android/gms/internal/ads/zzhqy;

    :cond_0
    return-object v0
.end method

.method protected final zzdc(Lcom/google/android/gms/internal/ads/zzibq;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_7

    const/4 p3, 0x3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    if-eq p1, p3, :cond_5

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_4

    const/4 p2, 0x5

    if-eq p1, p2, :cond_3

    const/4 p2, 0x6

    if-ne p1, p2, :cond_2

    sget-object p1, Lcom/google/android/gms/internal/ads/zzhqf;->zze:Lcom/google/android/gms/internal/ads/zzidk;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzhqf;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzhqf;->zze:Lcom/google/android/gms/internal/ads/zzidk;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzibm;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzhqf;->zzd:Lcom/google/android/gms/internal/ads/zzhqf;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzibm;-><init>(Lcom/google/android/gms/internal/ads/zzibr;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzhqf;->zze:Lcom/google/android/gms/internal/ads/zzidk;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 4
    :cond_0
    :goto_0
    monitor-exit p2

    return-object p1

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return-object p1

    .line 8
    :cond_2
    throw p3

    .line 2
    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzhqf;->zzd:Lcom/google/android/gms/internal/ads/zzhqf;

    return-object p1

    .line 5
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhqe;

    .line 6
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzhqe;-><init>([B)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhqf;

    .line 7
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzhqf;-><init>()V

    return-object p1

    .line 2
    :cond_6
    new-array p1, p3, [Ljava/lang/Object;

    const-string p3, "zza"

    const/4 v1, 0x0

    aput-object p3, p1, v1

    const-string p3, "zzb"

    aput-object p3, p1, p2

    const-string p2, "zzc"

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/gms/internal/ads/zzhqf;->zzd:Lcom/google/android/gms/internal/ads/zzhqf;

    const-string p3, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\n\u0003\u000c"

    .line 5
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzibr;->zzbv(Lcom/google/android/gms/internal/ads/zzidc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2
    :cond_7
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzi(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhqf;->zza:Ljava/lang/String;

    return-void
.end method

.method final synthetic zzj(Lcom/google/android/gms/internal/ads/zzian;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhqf;->zzb:Lcom/google/android/gms/internal/ads/zzian;

    return-void
.end method

.method final synthetic zzk(Lcom/google/android/gms/internal/ads/zzhqy;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhqy;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhqf;->zzc:I

    return-void
.end method
