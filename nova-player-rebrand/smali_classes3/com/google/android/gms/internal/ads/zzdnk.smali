.class public final Lcom/google/android/gms/internal/ads/zzdnk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzikg;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdnd;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdnd;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnk;->zza:Lcom/google/android/gms/internal/ads/zzdnd;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzdnd;)Lcom/google/android/gms/internal/ads/zzdnk;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdnk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdnk;-><init>(Lcom/google/android/gms/internal/ads/zzdnd;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnk;->zza:Lcom/google/android/gms/internal/ads/zzdnd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdnd;->zza()Lcom/google/android/gms/ads/internal/zzb;

    move-result-object v0

    return-object v0
.end method
