.class final Lcom/google/android/gms/internal/ads/zzamu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field public final zza:I

.field public final zzb:I

.field public final zzc:I

.field public final zzd:I

.field public final zze:I

.field public final zzf:I


# direct methods
.method private constructor <init>(IIIIII)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzamu;->zza:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzamu;->zzb:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzamu;->zzc:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzamu;->zzd:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzamu;->zze:I

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzamu;->zzf:I

    return-void
.end method

.method public static zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzamu;
    .locals 14

    .line 1
    const-string v0, "Format:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgrc;->zza(Z)V

    const/4 v0, 0x7

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    invoke-static {p0, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v0

    move v4, v1

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    .line 3
    :goto_0
    array-length v9, p0

    if-ge v2, v9, :cond_6

    .line 4
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgql;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/4 v10, 0x2

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x1

    sparse-switch v9, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v9, "style"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v12

    goto :goto_2

    :sswitch_1
    const-string v9, "start"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v13

    goto :goto_2

    :sswitch_2
    const-string v9, "layer"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v0

    goto :goto_2

    :sswitch_3
    const-string v9, "text"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v11

    goto :goto_2

    :sswitch_4
    const-string v9, "end"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v10

    goto :goto_2

    :cond_0
    :goto_1
    move v3, v1

    :goto_2
    if-eqz v3, :cond_5

    if-eq v3, v13, :cond_4

    if-eq v3, v10, :cond_3

    if-eq v3, v12, :cond_2

    if-eq v3, v11, :cond_1

    goto :goto_3

    :cond_1
    move v8, v2

    goto :goto_3

    :cond_2
    move v7, v2

    goto :goto_3

    :cond_3
    move v6, v2

    goto :goto_3

    :cond_4
    move v5, v2

    goto :goto_3

    :cond_5
    move v4, v2

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    if-eq v5, v1, :cond_7

    if-eq v6, v1, :cond_7

    if-eq v8, v1, :cond_7

    new-instance v3, Lcom/google/android/gms/internal/ads/zzamu;

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzamu;-><init>(IIIIII)V

    return-object v3

    :cond_7
    const/4 p0, 0x0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x188db -> :sswitch_4
        0x36452d -> :sswitch_3
        0x61fd551 -> :sswitch_2
        0x68ac462 -> :sswitch_1
        0x68b1db1 -> :sswitch_0
    .end sparse-switch
.end method
