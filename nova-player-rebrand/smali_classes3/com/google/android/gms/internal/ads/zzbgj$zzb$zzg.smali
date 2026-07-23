.class public final Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzg;
.super Lcom/google/android/gms/internal/ads/zzibr;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzidd;


# static fields
.field public static final zza:I = 0x1

.field public static final zzb:I = 0x2

.field public static final zzc:I = 0x3

.field private static final zzh:Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzg;

.field private static volatile zzi:Lcom/google/android/gms/internal/ads/zzidk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzidk;"
        }
    .end annotation
.end field


# instance fields
.field private zzd:I

.field private zze:Z

.field private zzf:Z

.field private zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzg;->zzh:Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzg;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzg;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbu(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzibr;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzibr;-><init>()V

    return-void
.end method

.method static synthetic zzC()Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzg;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzg;->zzh:Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzg;

    return-object v0
.end method

.method private zzD(Z)V
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzg;->zzd:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzg;->zzd:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzg;->zze:Z

    return-void
.end method

.method private zzF(Z)V
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzg;->zzd:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzg;->zzd:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzg;->zzf:Z

    return-void
.end method

.method private zzH(I)V
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzg;->zzd:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzg;->zzd:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzg;->zzg:I

    return-void
.end method

.method public static zzs()Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzg$zza;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzg;->zzh:Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbn()Lcom/google/android/gms/internal/ads/zzibl;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzg$zza;

    return-object v0
.end method


# virtual methods
.method final synthetic zzA(I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzg;->zzH(I)V

    return-void
.end method

.method protected final zzdc(Lcom/google/android/gms/internal/ads/zzibq;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_7

    const/4 p3, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_6

    if-eq p1, v0, :cond_5

    const/4 p2, 0x0

    if-eq p1, p3, :cond_4

    const/4 p3, 0x5

    if-eq p1, p3, :cond_3

    const/4 p3, 0x6

    if-ne p1, p3, :cond_2

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzg;->zzi:Lcom/google/android/gms/internal/ads/zzidk;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzg;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzg;->zzi:Lcom/google/android/gms/internal/ads/zzidk;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzibm;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzg;->zzh:Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzg;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzibm;-><init>(Lcom/google/android/gms/internal/ads/zzibr;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzg;->zzi:Lcom/google/android/gms/internal/ads/zzidk;

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

    .line 7
    :cond_2
    throw p2

    .line 2
    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzg;->zzh:Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzg;

    return-object p1

    .line 5
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzg$zza;

    .line 6
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzg$zza;-><init>([B)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzg;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzg;-><init>()V

    return-object p1

    .line 2
    :cond_6
    new-array p1, p3, [Ljava/lang/Object;

    const-string p3, "zzd"

    const/4 v2, 0x0

    aput-object p3, p1, v2

    const-string p3, "zze"

    aput-object p3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v1

    const-string p2, "zzg"

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzg;->zzh:Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzg;

    const-string p3, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1007\u0000\u0002\u1007\u0001\u0003\u100b\u0002"

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

.method final synthetic zzw(Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzg;->zzD(Z)V

    return-void
.end method

.method final synthetic zzy(Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzg;->zzF(Z)V

    return-void
.end method
