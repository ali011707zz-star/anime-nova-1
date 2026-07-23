.class public final Lcom/google/android/gms/internal/ads/zzcmk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzikg;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcmc;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcmc;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmk;->zza:Lcom/google/android/gms/internal/ads/zzcmc;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzcmc;)Lcom/google/android/gms/internal/ads/zzcmk;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcmk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcmk;-><init>(Lcom/google/android/gms/internal/ads/zzcmc;)V

    return-object v0
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzcmc;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcmc;->zzc()Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zziko;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final zza()Ljava/lang/ref/WeakReference;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmk;->zza:Lcom/google/android/gms/internal/ads/zzcmc;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcmk;->zzd(Lcom/google/android/gms/internal/ads/zzcmc;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmk;->zza:Lcom/google/android/gms/internal/ads/zzcmc;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcmk;->zzd(Lcom/google/android/gms/internal/ads/zzcmc;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    return-object v0
.end method
