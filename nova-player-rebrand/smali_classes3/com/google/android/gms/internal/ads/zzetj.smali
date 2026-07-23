.class public final Lcom/google/android/gms/internal/ads/zzetj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfav;


# instance fields
.field public final zza:Lcom/google/android/gms/ads/internal/client/zzr;

.field public final zzb:Ljava/lang/String;

.field public final zzc:Z

.field public final zzd:Ljava/lang/String;

.field public final zze:F

.field public final zzf:I

.field public final zzg:I

.field public final zzh:Ljava/lang/String;

.field public final zzi:I

.field public final zzj:Z

.field public final zzk:Landroidx/core/graphics/Insets;

.field public final zzl:Lcom/google/android/gms/internal/ads/zzetg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/client/zzr;Ljava/lang/String;ZLjava/lang/String;FIILjava/lang/String;IZLandroidx/core/graphics/Insets;Lcom/google/android/gms/internal/ads/zzetg;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "the adSize must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzetj;->zza:Lcom/google/android/gms/ads/internal/client/zzr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzetj;->zzb:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzetj;->zzc:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzetj;->zzd:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzetj;->zze:F

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzetj;->zzf:I

    iput p7, p0, Lcom/google/android/gms/internal/ads/zzetj;->zzg:I

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzetj;->zzh:Ljava/lang/String;

    iput p9, p0, Lcom/google/android/gms/internal/ads/zzetj;->zzi:I

    iput-boolean p10, p0, Lcom/google/android/gms/internal/ads/zzetj;->zzj:Z

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzetj;->zzk:Landroidx/core/graphics/Insets;

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzetj;->zzl:Lcom/google/android/gms/internal/ads/zzetg;

    return-void
.end method

.method private final zzc(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzetj;->zza:Lcom/google/android/gms/ads/internal/client/zzr;

    iget v1, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zze:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v2

    :goto_0
    const-string v6, "smart_w"

    const-string v7, "full"

    invoke-static {p1, v6, v7, v5}, Lcom/google/android/gms/internal/ads/zzfjz;->zzb(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2
    iget v5, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zzb:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_1

    move v6, v3

    goto :goto_1

    :cond_1
    move v6, v2

    :goto_1
    const-string v7, "smart_h"

    const-string v8, "auto"

    invoke-static {p1, v7, v8, v6}, Lcom/google/android/gms/internal/ads/zzfjz;->zzb(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3
    iget-boolean v6, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zzj:Z

    const-string v7, "ene"

    invoke-static {p1, v7, v3, v6}, Lcom/google/android/gms/internal/ads/zzfjz;->zzd(Landroid/os/Bundle;Ljava/lang/String;ZZ)V

    const-string v6, "102"

    .line 4
    iget-boolean v7, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zzm:Z

    const-string v8, "rafmt"

    invoke-static {p1, v8, v6, v7}, Lcom/google/android/gms/internal/ads/zzfjz;->zzb(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v6, "103"

    .line 5
    iget-boolean v7, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zzn:Z

    invoke-static {p1, v8, v6, v7}, Lcom/google/android/gms/internal/ads/zzfjz;->zzb(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v6, "105"

    .line 6
    iget-boolean v7, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zzo:Z

    invoke-static {p1, v8, v6, v7}, Lcom/google/android/gms/internal/ads/zzfjz;->zzb(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean v6, p0, Lcom/google/android/gms/internal/ads/zzetj;->zzj:Z

    const-string v7, "inline_adaptive_slot"

    .line 7
    invoke-static {p1, v7, v3, v6}, Lcom/google/android/gms/internal/ads/zzfjz;->zzd(Landroid/os/Bundle;Ljava/lang/String;ZZ)V

    .line 8
    iget-boolean v6, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zzo:Z

    const-string v7, "interscroller_slot"

    invoke-static {p1, v7, v3, v6}, Lcom/google/android/gms/internal/ads/zzfjz;->zzd(Landroid/os/Bundle;Ljava/lang/String;ZZ)V

    const-string v6, "format"

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzetj;->zzb:Ljava/lang/String;

    .line 9
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzfjz;->zze(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "fluid"

    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzetj;->zzc:Z

    .line 10
    const-string v8, "height"

    invoke-static {p1, v6, v8, v7}, Lcom/google/android/gms/internal/ads/zzfjz;->zzb(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzetj;->zzd:Ljava/lang/String;

    .line 11
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    xor-int/2addr v7, v3

    const-string v9, "sz"

    .line 12
    invoke-static {p1, v9, v6, v7}, Lcom/google/android/gms/internal/ads/zzfjz;->zzb(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v6, "u_sd"

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzetj;->zze:F

    .line 13
    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v6, "sw"

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzetj;->zzf:I

    .line 14
    invoke-virtual {p1, v6, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "sh"

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzetj;->zzg:I

    .line 15
    invoke-virtual {p1, v6, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzetj;->zzh:Ljava/lang/String;

    .line 16
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    xor-int/2addr v3, v7

    const-string v7, "sc"

    invoke-static {p1, v7, v6, v3}, Lcom/google/android/gms/internal/ads/zzfjz;->zzb(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzetj;->zzi:I

    if-eq v3, v4, :cond_2

    const-string v4, "u_mso"

    .line 17
    invoke-virtual {p1, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzetj;->zzk:Landroidx/core/graphics/Insets;

    if-eqz v3, :cond_3

    const-string v4, "sam_t"

    .line 18
    iget v6, v3, Landroidx/core/graphics/Insets;->top:I

    invoke-virtual {p1, v4, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "sam_b"

    .line 19
    iget v6, v3, Landroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {p1, v4, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "sam_l"

    .line 20
    iget v6, v3, Landroidx/core/graphics/Insets;->left:I

    invoke-virtual {p1, v4, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "sam_r"

    .line 21
    iget v3, v3, Landroidx/core/graphics/Insets;->right:I

    invoke-virtual {p1, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzetj;->zzl:Lcom/google/android/gms/internal/ads/zzetg;

    if-eqz v3, :cond_4

    const-string v4, "rc_tl"

    iget v6, v3, Lcom/google/android/gms/internal/ads/zzetg;->zza:I

    .line 22
    invoke-virtual {p1, v4, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "rc_tr"

    iget v6, v3, Lcom/google/android/gms/internal/ads/zzetg;->zzb:I

    .line 23
    invoke-virtual {p1, v4, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "rc_bl"

    iget v6, v3, Lcom/google/android/gms/internal/ads/zzetg;->zzc:I

    .line 24
    invoke-virtual {p1, v4, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "rc_br"

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzetg;->zzd:I

    .line 25
    invoke-virtual {p1, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    .line 26
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 27
    iget-object v4, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zzg:[Lcom/google/android/gms/ads/internal/client/zzr;

    const-string v6, "is_fluid_height"

    const-string v7, "width"

    if-nez v4, :cond_5

    new-instance v2, Landroid/os/Bundle;

    .line 34
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 35
    invoke-virtual {v2, v8, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 36
    invoke-virtual {v2, v7, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 37
    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zzi:Z

    invoke-virtual {v2, v6, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 38
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 39
    :cond_5
    :goto_2
    array-length v0, v4

    if-ge v2, v0, :cond_6

    .line 28
    aget-object v0, v4, v2

    new-instance v1, Landroid/os/Bundle;

    .line 29
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 30
    iget-boolean v5, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zzi:Z

    invoke-virtual {v1, v6, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 31
    iget v5, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zzb:I

    invoke-virtual {v1, v8, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 32
    iget v0, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zze:I

    invoke-virtual {v1, v7, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 33
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 38
    :cond_6
    :goto_3
    const-string v0, "valid_ad_sizes"

    .line 39
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdah;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdah;->zza:Landroid/os/Bundle;

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzetj;->zzc(Landroid/os/Bundle;)V

    return-void
.end method

.method public final synthetic zzb(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdah;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdah;->zzb:Landroid/os/Bundle;

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzetj;->zzc(Landroid/os/Bundle;)V

    return-void
.end method
