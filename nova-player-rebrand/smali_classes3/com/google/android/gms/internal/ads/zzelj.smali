.class final synthetic Lcom/google/android/gms/internal/ads/zzelj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcwd;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzfki;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfki;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzelj;->zza:Lcom/google/android/gms/internal/ads/zzfki;

    return-void
.end method


# virtual methods
.method public final synthetic zza()Lcom/google/android/gms/ads/internal/client/zzed;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelj;->zza:Lcom/google/android/gms/internal/ads/zzfki;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfki;->zzt()Lcom/google/android/gms/ads/internal/client/zzed;

    move-result-object v0

    return-object v0
.end method
