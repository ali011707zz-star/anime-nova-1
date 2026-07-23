.class public final Lcom/google/android/gms/internal/ads/zzeyu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfav;


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzfiq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfiq;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeyu;->zza:Lcom/google/android/gms/internal/ads/zzfiq;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdah;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeyu;->zza:Lcom/google/android/gms/internal/ads/zzfiq;

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhe;->zzns:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdah;->zza:Landroid/os/Bundle;

    const-string v1, "render_in_browser"

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfiq;->zzb()Z

    move-result v2

    .line 5
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "disable_ml"

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfiq;->zzc()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public synthetic zzb(Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzfav$-CC;->$default$zzb(Lcom/google/android/gms/internal/ads/zzfav;Ljava/lang/Object;)V

    return-void
.end method
