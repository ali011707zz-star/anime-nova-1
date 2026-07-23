.class final Lcom/google/ads/interactivemedia/v3/internal/zzzu;
.super Lcom/google/ads/interactivemedia/v3/internal/zzvp;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzvp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic read(Lcom/google/ads/interactivemedia/v3/internal/zzabb;)Ljava/lang/Object;
    .locals 15

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzr()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzi()V

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzc()V

    const/4 v0, 0x0

    move v2, v0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    .line 4
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzr()I

    move-result v1

    const/4 v8, 0x4

    if-eq v1, v8, :cond_8

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzf()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzl()I

    move-result v9

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/4 v11, 0x2

    const/4 v12, 0x5

    const/4 v13, 0x1

    const/4 v14, 0x3

    sparse-switch v10, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v10, "hourOfDay"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v14

    goto :goto_2

    :sswitch_1
    const-string v10, "month"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v13

    goto :goto_2

    :sswitch_2
    const-string/jumbo v10, "year"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v0

    goto :goto_2

    :sswitch_3
    const-string v10, "second"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v12

    goto :goto_2

    :sswitch_4
    const-string v10, "minute"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v8

    goto :goto_2

    :sswitch_5
    const-string v10, "dayOfMonth"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v11

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v1, -0x1

    :goto_2
    if-eqz v1, :cond_7

    if-eq v1, v13, :cond_6

    if-eq v1, v11, :cond_5

    if-eq v1, v14, :cond_4

    if-eq v1, v8, :cond_3

    if-eq v1, v12, :cond_2

    goto :goto_0

    :cond_2
    move v7, v9

    goto :goto_0

    :cond_3
    move v6, v9

    goto :goto_0

    :cond_4
    move v5, v9

    goto :goto_0

    :cond_5
    move v4, v9

    goto :goto_0

    :cond_6
    move v3, v9

    goto :goto_0

    :cond_7
    move v2, v9

    goto :goto_0

    .line 8
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzd()V

    new-instance v1, Ljava/util/GregorianCalendar;

    .line 9
    invoke-direct/range {v1 .. v7}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x4667c053 -> :sswitch_5
        -0x400459ec -> :sswitch_4
        -0x3604bb8c -> :sswitch_3
        0x38883d -> :sswitch_2
        0x6342280 -> :sswitch_1
        0x3ab9c2c1 -> :sswitch_0
    .end sparse-switch
.end method

.method public final bridge synthetic write(Lcom/google/ads/interactivemedia/v3/internal/zzabd;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Ljava/util/Calendar;

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzm()Lcom/google/ads/interactivemedia/v3/internal/zzabd;

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzd()Lcom/google/ads/interactivemedia/v3/internal/zzabd;

    const-string/jumbo v0, "year"

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzf(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzabd;

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzk(J)Lcom/google/ads/interactivemedia/v3/internal/zzabd;

    const-string v0, "month"

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzf(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzabd;

    const/4 v0, 0x2

    .line 7
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzk(J)Lcom/google/ads/interactivemedia/v3/internal/zzabd;

    const-string v0, "dayOfMonth"

    .line 8
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzf(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzabd;

    const/4 v0, 0x5

    .line 9
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzk(J)Lcom/google/ads/interactivemedia/v3/internal/zzabd;

    const-string v0, "hourOfDay"

    .line 10
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzf(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzabd;

    const/16 v0, 0xb

    .line 11
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzk(J)Lcom/google/ads/interactivemedia/v3/internal/zzabd;

    const-string v0, "minute"

    .line 12
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzf(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzabd;

    const/16 v0, 0xc

    .line 13
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzk(J)Lcom/google/ads/interactivemedia/v3/internal/zzabd;

    const-string v0, "second"

    .line 14
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzf(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzabd;

    const/16 v0, 0xd

    .line 15
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzk(J)Lcom/google/ads/interactivemedia/v3/internal/zzabd;

    .line 16
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zze()Lcom/google/ads/interactivemedia/v3/internal/zzabd;

    return-void
.end method
