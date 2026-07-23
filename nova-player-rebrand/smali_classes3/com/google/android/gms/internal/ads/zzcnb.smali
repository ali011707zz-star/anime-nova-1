.class public final Lcom/google/android/gms/internal/ads/zzcnb;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnb;->zza:Lcom/google/android/gms/internal/ads/zzcmc;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzcmc;)Lcom/google/android/gms/internal/ads/zzcnb;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcnb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcnb;-><init>(Lcom/google/android/gms/internal/ads/zzcmc;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnb;->zza:Lcom/google/android/gms/internal/ads/zzcmc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcmc;->zzi()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
