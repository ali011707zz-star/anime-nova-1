.class final Lcom/google/android/gms/ads/internal/util/zzk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbie;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbif;

.field final synthetic zzb:Landroid/os/Bundle;

.field final synthetic zzc:Landroid/content/Context;

.field final synthetic zzd:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/util/zzs;Lcom/google/android/gms/internal/ads/zzbif;Landroid/os/Bundle;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzk;->zza:Lcom/google/android/gms/internal/ads/zzbif;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/util/zzk;->zzb:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/util/zzk;->zzc:Landroid/content/Context;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/util/zzk;->zzd:Landroid/net/Uri;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzk;->zza:Lcom/google/android/gms/internal/ads/zzbif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbif;->zzc()Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object v1

    .line 2
    new-instance v2, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v2, v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>(Landroidx/browser/customtabs/CustomTabsSession;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzk;->zzb:Landroid/os/Bundle;

    .line 3
    invoke-static {v2, v1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzW(Landroidx/browser/customtabs/CustomTabsIntent$Builder;Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {v2}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v1

    .line 5
    iget-object v2, v1, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/util/zzk;->zzc:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzikw;->zza(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/util/zzk;->zzd:Landroid/net/Uri;

    .line 6
    invoke-virtual {v1, v3, v2}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V

    .line 7
    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzbif;->zzb(Landroid/app/Activity;)V

    return-void
.end method
