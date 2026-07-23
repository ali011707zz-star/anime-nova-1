.class public final Lcom/google/android/gms/internal/ads/zzdnf;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnf;->zza:Lcom/google/android/gms/internal/ads/zzdnd;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzdnd;)Lcom/google/android/gms/internal/ads/zzdnf;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdnf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdnf;-><init>(Lcom/google/android/gms/internal/ads/zzdnd;)V

    return-object v0
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzdnd;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdnd;->zzc()Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zziko;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final zza()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnf;->zza:Lcom/google/android/gms/internal/ads/zzdnd;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdnf;->zzd(Lcom/google/android/gms/internal/ads/zzdnd;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnf;->zza:Lcom/google/android/gms/internal/ads/zzdnd;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdnf;->zzd(Lcom/google/android/gms/internal/ads/zzdnd;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
