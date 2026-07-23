.class final synthetic Lcom/google/android/gms/internal/ads/zzcku;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzckv;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzcjl;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcjl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcku;->zza:Lcom/google/android/gms/internal/ads/zzcjl;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcku;->zza:Lcom/google/android/gms/internal/ads/zzcjl;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcko;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcko;->zzaS()Lcom/google/android/gms/internal/ads/zzcjw;

    move-result-object v0

    if-nez v0, :cond_0

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p1, "Unable to pass GMSG, no AdWebViewClient for AdWebView!"

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzclj;->zzQ(Landroid/net/Uri;)V

    return-void
.end method
