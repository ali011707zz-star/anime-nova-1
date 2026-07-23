.class final synthetic Lcom/google/android/gms/internal/ads/zzbeb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzbec;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbdu;

.field private final synthetic zzc:Landroid/webkit/WebView;

.field private final synthetic zzd:Z


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbec;Lcom/google/android/gms/internal/ads/zzbdu;Landroid/webkit/WebView;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbeb;->zza:Lcom/google/android/gms/internal/ads/zzbec;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbeb;->zzb:Lcom/google/android/gms/internal/ads/zzbdu;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbeb;->zzc:Landroid/webkit/WebView;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzbeb;->zzd:Z

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbeb;->zza:Lcom/google/android/gms/internal/ads/zzbec;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbec;->zze:Lcom/google/android/gms/internal/ads/zzbee;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbeb;->zzb:Lcom/google/android/gms/internal/ads/zzbdu;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbeb;->zzc:Landroid/webkit/WebView;

    check-cast p1, Ljava/lang/String;

    .line 1
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzbeb;->zzd:Z

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/google/android/gms/internal/ads/zzbee;->zzd(Lcom/google/android/gms/internal/ads/zzbdu;Landroid/webkit/WebView;Ljava/lang/String;Z)V

    return-void
.end method
