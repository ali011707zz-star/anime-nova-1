.class final synthetic Lcom/google/android/gms/internal/ads/zzcju;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzcjw;

.field private final synthetic zzb:Landroid/view/View;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzcce;

.field private final synthetic zzd:I


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcjw;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcce;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcju;->zza:Lcom/google/android/gms/internal/ads/zzcjw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcju;->zzb:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcju;->zzc:Lcom/google/android/gms/internal/ads/zzcce;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzcju;->zzd:I

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcju;->zza:Lcom/google/android/gms/internal/ads/zzcjw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcju;->zzb:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcju;->zzc:Lcom/google/android/gms/internal/ads/zzcce;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzcju;->zzd:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcjw;->zzU(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcce;I)V

    return-void
.end method
