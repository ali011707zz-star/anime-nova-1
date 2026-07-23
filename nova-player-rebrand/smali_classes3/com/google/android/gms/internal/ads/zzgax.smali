.class final synthetic Lcom/google/android/gms/internal/ads/zzgax;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgyw;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzgaz;

.field private final synthetic zzb:Landroid/content/Context;

.field private final synthetic zzc:Ljava/lang/String;

.field private final synthetic zzd:Landroid/view/View;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgaz;Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgax;->zza:Lcom/google/android/gms/internal/ads/zzgaz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgax;->zzb:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgax;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgax;->zzd:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6

    .line 0
    move-object v5, p1

    check-cast v5, Ljava/lang/Void;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgax;->zza:Lcom/google/android/gms/internal/ads/zzgaz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgax;->zzb:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgax;->zzc:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgax;->zzd:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgaz;->zzi(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;Ljava/lang/Void;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
