.class final synthetic Lcom/google/android/gms/internal/ads/zzfnr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdhc;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzfnb;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfnb;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfnr;->zza:Lcom/google/android/gms/internal/ads/zzfnb;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfnv;

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfnr;->zza:Lcom/google/android/gms/internal/ads/zzfnb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfnb;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfno;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfnb;->zzb()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzfnv;->zzdN(Lcom/google/android/gms/internal/ads/zzfno;Ljava/lang/String;)V

    return-void
.end method
