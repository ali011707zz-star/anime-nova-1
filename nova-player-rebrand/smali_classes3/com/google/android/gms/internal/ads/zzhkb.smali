.class public final Lcom/google/android/gms/internal/ads/zzhkb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzhkb;

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzhka;


# instance fields
.field private final zzc:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhkb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhkb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhkb;->zza:Lcom/google/android/gms/internal/ads/zzhkb;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhka;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhka;-><init>([B)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhkb;->zzb:Lcom/google/android/gms/internal/ads/zzhka;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhkb;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzhkb;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhkb;->zza:Lcom/google/android/gms/internal/ads/zzhkb;

    return-object v0
.end method


# virtual methods
.method public final zzb()Lcom/google/android/gms/internal/ads/zzhjt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhkb;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhjt;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhkb;->zzb:Lcom/google/android/gms/internal/ads/zzhka;

    :cond_0
    return-object v0
.end method
