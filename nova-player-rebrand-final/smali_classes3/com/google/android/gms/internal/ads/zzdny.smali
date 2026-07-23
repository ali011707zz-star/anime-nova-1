.class final synthetic Lcom/google/android/gms/internal/ads/zzdny;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzdoc;

.field private final synthetic zzb:Landroid/view/View;

.field private final synthetic zzc:Z

.field private final synthetic zzd:I


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdoc;Landroid/view/View;ZI)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdny;->zza:Lcom/google/android/gms/internal/ads/zzdoc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdny;->zzb:Landroid/view/View;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzdny;->zzc:Z

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzdny;->zzd:I

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdny;->zza:Lcom/google/android/gms/internal/ads/zzdoc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdny;->zzb:Landroid/view/View;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzdny;->zzc:Z

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzdny;->zzd:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdoc;->zzX(Landroid/view/View;ZI)V

    return-void
.end method
