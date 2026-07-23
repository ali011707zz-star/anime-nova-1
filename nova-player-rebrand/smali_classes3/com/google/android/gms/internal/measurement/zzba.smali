.class public abstract Lcom/google/android/gms/internal/measurement/zzba;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@23.0.0"


# direct methods
.method public static zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzae;Lcom/google/android/gms/internal/measurement/zzg;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/zzao;
    .locals 25

    move-object/from16 v0, p0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 70
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    const-string v7, "toString"

    const-string v8, "filter"

    const-string v9, "forEach"

    const-string v10, "lastIndexOf"

    const-string v11, "map"

    const-string v12, "pop"

    const-string v13, "join"

    const-string v14, "some"

    const-string v15, "sort"

    const-string v6, "every"

    move/from16 v16, v5

    const-string v5, "shift"

    move-object/from16 v17, v4

    const-string v4, "slice"

    const-string v3, "reverse"

    const-string v1, "indexOf"

    const/16 v18, -0x1

    sparse-switch v16, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "reduceRight"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_3
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_4
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_5
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_1

    :sswitch_6
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_7
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_8
    const-string v2, "push"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_9
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_a
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_b
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_c
    const-string v2, "unshift"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto :goto_1

    :sswitch_d
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_e
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_f
    const-string v2, "splice"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto :goto_1

    :sswitch_10
    const-string v2, "reduce"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_11
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_12
    const-string v2, "concat"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_13
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto :goto_1

    :cond_0
    :goto_0
    move/from16 v0, v18

    :goto_1
    const-string v2, ","

    move/from16 p0, v0

    const-string v0, "Callback should be a method"

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    const-wide/16 v23, 0x0

    const/4 v8, 0x0

    packed-switch p0, :pswitch_data_0

    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Command not supported"

    .line 182
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :pswitch_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzae;

    .line 166
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzae;-><init>()V

    .line 167
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzao;

    move-object/from16 v3, p2

    .line 168
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object v2

    instance-of v4, v2, Lcom/google/android/gms/internal/measurement/zzag;

    if-nez v4, :cond_1

    .line 169
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    move-result v4

    invoke-virtual {v0, v4, v2}, Lcom/google/android/gms/internal/measurement/zzae;->zzn(ILcom/google/android/gms/internal/measurement/zzao;)V

    goto :goto_2

    .line 1
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Argument evaluation failed"

    .line 170
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    move-result v1

    .line 172
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->zzg()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 173
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 174
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v9, p1

    invoke-virtual {v9, v3}, Lcom/google/android/gms/internal/measurement/zzae;->zzl(I)Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/internal/measurement/zzae;->zzn(ILcom/google/android/gms/internal/measurement/zzao;)V

    goto :goto_3

    :cond_3
    move-object/from16 v9, p1

    .line 175
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzp()V

    .line 176
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzae;->zzg()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 177
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 178
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/zzae;->zzl(I)Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object v2

    invoke-virtual {v9, v3, v2}, Lcom/google/android/gms/internal/measurement/zzae;->zzn(ILcom/google/android/gms/internal/measurement/zzao;)V

    goto :goto_4

    :cond_4
    move-object/from16 v9, p1

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzah;

    .line 179
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    move-result v1

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    return-object v0

    :pswitch_1
    move-object/from16 v9, p1

    move-object/from16 v6, p3

    const/4 v0, 0x0

    .line 162
    invoke-static {v7, v0, v6}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Ljava/lang/String;ILjava/util/List;)V

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzas;

    .line 163
    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/measurement/zzae;->zzs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzas;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_2
    move-object/from16 v9, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    const/4 v0, 0x0

    .line 140
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzae;

    .line 141
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzae;-><init>()V

    return-object v0

    .line 142
    :cond_6
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzao;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzao;->zzd()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzh;->zzi(D)D

    move-result-wide v1

    double-to-int v1, v1

    if-gez v1, :cond_7

    .line 143
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_5

    .line 144
    :cond_7
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    move-result v0

    if-le v1, v0, :cond_8

    .line 145
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    move-result v1

    .line 146
    :cond_8
    :goto_5
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    move-result v0

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzae;

    .line 147
    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzae;-><init>()V

    .line 148
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_b

    .line 152
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzao;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/internal/measurement/zzao;->zzd()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/zzh;->zzi(D)D

    move-result-wide v4

    double-to-int v4, v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-lez v4, :cond_9

    move v5, v1

    :goto_6
    add-int v7, v1, v4

    .line 153
    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-ge v5, v7, :cond_9

    .line 154
    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/measurement/zzae;->zzl(I)Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object v7

    .line 155
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    move-result v8

    invoke-virtual {v2, v8, v7}, Lcom/google/android/gms/internal/measurement/zzae;->zzn(ILcom/google/android/gms/internal/measurement/zzao;)V

    .line 156
    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/measurement/zzae;->zzr(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 157
    :cond_9
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x2

    if-le v0, v4, :cond_c

    const/4 v0, 0x2

    .line 158
    :goto_7
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_c

    .line 159
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzao;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/measurement/zzag;

    if-nez v5, :cond_a

    add-int v5, v1, v0

    add-int/lit8 v5, v5, -0x2

    .line 160
    invoke-virtual {v9, v5, v4}, Lcom/google/android/gms/internal/measurement/zzae;->zzq(ILcom/google/android/gms/internal/measurement/zzao;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 159
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to parse elements to add"

    .line 161
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_8
    if-ge v1, v0, :cond_c

    .line 149
    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/measurement/zzae;->zzl(I)Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object v3

    .line 150
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    move-result v4

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/internal/measurement/zzae;->zzn(ILcom/google/android/gms/internal/measurement/zzao;)V

    .line 151
    invoke-virtual {v9, v1, v8}, Lcom/google/android/gms/internal/measurement/zzae;->zzn(ILcom/google/android/gms/internal/measurement/zzao;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_c
    return-object v2

    :pswitch_3
    move-object/from16 v9, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    const/4 v5, 0x1

    .line 129
    invoke-static {v15, v5, v6}, Lcom/google/android/gms/internal/measurement/zzh;->zzc(Ljava/lang/String;ILjava/util/List;)V

    .line 130
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    move-result v0

    const/4 v4, 0x2

    if-lt v0, v4, :cond_1b

    .line 131
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzb()Ljava/util/List;

    move-result-object v0

    .line 132
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v5, 0x0

    .line 133
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzao;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzai;

    if-eqz v2, :cond_d

    .line 135
    move-object v8, v1

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzai;

    goto :goto_9

    .line 133
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Comparator should be a method"

    .line 134
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_e
    :goto_9
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzaz;

    invoke-direct {v1, v8, v3}, Lcom/google/android/gms/internal/measurement/zzaz;-><init>(Lcom/google/android/gms/internal/measurement/zzai;Lcom/google/android/gms/internal/measurement/zzg;)V

    .line 136
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 137
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzp()V

    .line 138
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzao;

    add-int/lit8 v3, v2, 0x1

    .line 139
    invoke-virtual {v9, v2, v1}, Lcom/google/android/gms/internal/measurement/zzae;->zzn(ILcom/google/android/gms/internal/measurement/zzao;)V

    move v2, v3

    goto :goto_a

    :pswitch_4
    move-object/from16 v9, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    const/4 v5, 0x1

    .line 118
    invoke-static {v14, v5, v6}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Ljava/lang/String;ILjava/util/List;)V

    const/4 v5, 0x0

    .line 119
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzao;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzai;

    if-eqz v2, :cond_12

    .line 121
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzao;->zzl:Lcom/google/android/gms/internal/measurement/zzao;

    return-object v0

    .line 122
    :cond_f
    check-cast v1, Lcom/google/android/gms/internal/measurement/zzai;

    .line 123
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzg()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 124
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 125
    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/measurement/zzae;->zzo(I)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 126
    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/measurement/zzae;->zzl(I)Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object v4

    int-to-double v5, v2

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzah;

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    const/4 v5, 0x3

    new-array v6, v5, [Lcom/google/android/gms/internal/measurement/zzao;

    const/16 v16, 0x0

    aput-object v4, v6, v16

    const/16 v20, 0x1

    aput-object v2, v6, v20

    const/16 v19, 0x2

    aput-object v9, v6, v19

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/measurement/zzai;->zza(Lcom/google/android/gms/internal/measurement/zzg;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object v2

    .line 127
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzao;->zze()Ljava/lang/Boolean;

    move-result-object v2

    .line 128
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_10

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzao;->zzk:Lcom/google/android/gms/internal/measurement/zzao;

    return-object v0

    :cond_11
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzao;->zzl:Lcom/google/android/gms/internal/measurement/zzao;

    return-object v0

    .line 119
    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 120
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_5
    move-object/from16 v9, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    const/4 v0, 0x2

    .line 104
    invoke-static {v4, v0, v6}, Lcom/google/android/gms/internal/measurement/zzh;->zzc(Ljava/lang/String;ILjava/util/List;)V

    .line 105
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 106
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzt()Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object v0

    return-object v0

    .line 107
    :cond_13
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    move-result v0

    int-to-double v0, v0

    const/4 v5, 0x0

    .line 108
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzao;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzao;->zzd()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/zzh;->zzi(D)D

    move-result-wide v4

    cmpg-double v2, v4, v23

    if-gez v2, :cond_14

    add-double/2addr v4, v0

    move-wide/from16 v7, v23

    .line 109
    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    goto :goto_b

    .line 110
    :cond_14
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 111
    :goto_b
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v7, 0x2

    if-ne v2, v7, :cond_16

    const/4 v2, 0x1

    .line 112
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzao;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzao;->zzd()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zzh;->zzi(D)D

    move-result-wide v2

    const-wide/16 v7, 0x0

    cmpg-double v6, v2, v7

    if-gez v6, :cond_15

    add-double/2addr v0, v2

    .line 113
    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    goto :goto_c

    .line 114
    :cond_15
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 113
    :cond_16
    :goto_c
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzae;

    .line 115
    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzae;-><init>()V

    double-to-int v3, v4

    :goto_d
    int-to-double v4, v3

    cmpg-double v4, v4, v0

    if-gez v4, :cond_17

    .line 116
    invoke-virtual {v9, v3}, Lcom/google/android/gms/internal/measurement/zzae;->zzl(I)Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object v4

    .line 117
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    move-result v5

    invoke-virtual {v2, v5, v4}, Lcom/google/android/gms/internal/measurement/zzae;->zzn(ILcom/google/android/gms/internal/measurement/zzao;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_17
    return-object v2

    :pswitch_6
    move-object/from16 v9, p1

    move-object/from16 v6, p3

    const/4 v0, 0x0

    .line 100
    invoke-static {v5, v0, v6}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Ljava/lang/String;ILjava/util/List;)V

    .line 101
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    move-result v1

    if-nez v1, :cond_18

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzao;->zzf:Lcom/google/android/gms/internal/measurement/zzao;

    return-object v0

    .line 102
    :cond_18
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/measurement/zzae;->zzl(I)Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object v1

    .line 103
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/measurement/zzae;->zzr(I)V

    return-object v1

    :pswitch_7
    move-object/from16 v9, p1

    move-object/from16 v6, p3

    const/4 v0, 0x0

    .line 92
    invoke-static {v3, v0, v6}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Ljava/lang/String;ILjava/util/List;)V

    .line 93
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v2, 0x0

    :goto_e
    div-int/lit8 v1, v0, 0x2

    if-ge v2, v1, :cond_1b

    .line 94
    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/measurement/zzae;->zzo(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 95
    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/measurement/zzae;->zzl(I)Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object v1

    .line 96
    invoke-virtual {v9, v2, v8}, Lcom/google/android/gms/internal/measurement/zzae;->zzn(ILcom/google/android/gms/internal/measurement/zzao;)V

    add-int/lit8 v3, v0, -0x1

    sub-int/2addr v3, v2

    .line 97
    invoke-virtual {v9, v3}, Lcom/google/android/gms/internal/measurement/zzae;->zzo(I)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 98
    invoke-virtual {v9, v3}, Lcom/google/android/gms/internal/measurement/zzae;->zzl(I)Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object v4

    invoke-virtual {v9, v2, v4}, Lcom/google/android/gms/internal/measurement/zzae;->zzn(ILcom/google/android/gms/internal/measurement/zzao;)V

    .line 99
    :cond_19
    invoke-virtual {v9, v3, v1}, Lcom/google/android/gms/internal/measurement/zzae;->zzn(ILcom/google/android/gms/internal/measurement/zzao;)V

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1b
    return-object v9

    :pswitch_8
    move-object/from16 v9, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    const/4 v5, 0x0

    .line 180
    invoke-static {v9, v3, v6, v5}, Lcom/google/android/gms/internal/measurement/zzba;->zzb(Lcom/google/android/gms/internal/measurement/zzae;Lcom/google/android/gms/internal/measurement/zzg;Ljava/util/List;Z)Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object v0

    return-object v0

    :pswitch_9
    move-object/from16 v9, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    const/4 v5, 0x1

    .line 181
    invoke-static {v9, v3, v6, v5}, Lcom/google/android/gms/internal/measurement/zzba;->zzb(Lcom/google/android/gms/internal/measurement/zzae;Lcom/google/android/gms/internal/measurement/zzg;Ljava/util/List;Z)Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object v0

    return-object v0

    :pswitch_a
    move-object/from16 v9, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    .line 87
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 88
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzao;

    .line 89
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object v1

    .line 90
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    move-result v2

    invoke-virtual {v9, v2, v1}, Lcom/google/android/gms/internal/measurement/zzae;->zzn(ILcom/google/android/gms/internal/measurement/zzao;)V

    goto :goto_f

    :cond_1c
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzah;

    .line 91
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    move-result v1

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    return-object v0

    :pswitch_b
    move-object/from16 v9, p1

    move-object/from16 v6, p3

    const/4 v5, 0x0

    .line 83
    invoke-static {v12, v5, v6}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Ljava/lang/String;ILjava/util/List;)V

    .line 84
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    move-result v0

    if-nez v0, :cond_1d

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzao;->zzf:Lcom/google/android/gms/internal/measurement/zzao;

    return-object v0

    :cond_1d
    add-int/lit8 v0, v0, -0x1

    .line 85
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/measurement/zzae;->zzl(I)Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object v1

    .line 86
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/measurement/zzae;->zzr(I)V

    return-object v1

    :pswitch_c
    move-object/from16 v9, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 76
    invoke-static {v11, v2, v6}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Ljava/lang/String;ILjava/util/List;)V

    .line 77
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzao;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzan;

    if-eqz v2, :cond_1f

    .line 79
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    move-result v0

    if-nez v0, :cond_1e

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzae;

    .line 80
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzae;-><init>()V

    return-object v0

    .line 81
    :cond_1e
    check-cast v1, Lcom/google/android/gms/internal/measurement/zzan;

    .line 82
    invoke-static {v9, v3, v1, v8, v8}, Lcom/google/android/gms/internal/measurement/zzba;->zzc(Lcom/google/android/gms/internal/measurement/zzae;Lcom/google/android/gms/internal/measurement/zzg;Lcom/google/android/gms/internal/measurement/zzai;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/zzae;

    move-result-object v0

    return-object v0

    .line 77
    :cond_1f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 78
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_d
    move-object/from16 v9, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    const/4 v4, 0x2

    .line 60
    invoke-static {v10, v4, v6}, Lcom/google/android/gms/internal/measurement/zzh;->zzc(Ljava/lang/String;ILjava/util/List;)V

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzao;->zzf:Lcom/google/android/gms/internal/measurement/zzao;

    .line 61
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_20

    const/4 v5, 0x0

    .line 62
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzao;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object v0

    .line 63
    :cond_20
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 64
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    if-le v2, v5, :cond_22

    .line 65
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzao;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object v1

    .line 66
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzao;->zzd()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 67
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-double v1, v1

    :goto_10
    const-wide/16 v23, 0x0

    goto :goto_11

    .line 68
    :cond_21
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzao;->zzd()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzh;->zzi(D)D

    move-result-wide v1

    goto :goto_10

    :goto_11
    cmpg-double v3, v1, v23

    if-gez v3, :cond_23

    .line 69
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    move-result v3

    int-to-double v3, v3

    add-double/2addr v1, v3

    goto :goto_12

    :cond_22
    const-wide/16 v23, 0x0

    int-to-double v1, v1

    :cond_23
    :goto_12
    cmpg-double v3, v1, v23

    if-gez v3, :cond_24

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzah;

    move-object/from16 v4, v17

    .line 70
    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    return-object v0

    :cond_24
    move-object/from16 v4, v17

    .line 71
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    move-result v3

    int-to-double v5, v3

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    double-to-int v1, v1

    :goto_13
    if-ltz v1, :cond_26

    .line 72
    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/measurement/zzae;->zzo(I)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 73
    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/measurement/zzae;->zzl(I)Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/measurement/zzh;->zzf(Lcom/google/android/gms/internal/measurement/zzao;Lcom/google/android/gms/internal/measurement/zzao;)Z

    move-result v2

    if-eqz v2, :cond_25

    int-to-double v0, v1

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzah;

    .line 74
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    return-object v2

    :cond_25
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    :cond_26
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzah;

    .line 75
    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    return-object v0

    :pswitch_e
    move-object/from16 v9, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    const/4 v5, 0x1

    .line 54
    invoke-static {v13, v5, v6}, Lcom/google/android/gms/internal/measurement/zzh;->zzc(Ljava/lang/String;ILjava/util/List;)V

    .line 55
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    move-result v0

    if-nez v0, :cond_27

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzao;->zzm:Lcom/google/android/gms/internal/measurement/zzao;

    return-object v0

    .line 56
    :cond_27
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    const/4 v5, 0x0

    .line 57
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzao;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzam;

    if-nez v1, :cond_29

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzat;

    if-eqz v1, :cond_28

    goto :goto_14

    .line 58
    :cond_28
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzao;->zzc()Ljava/lang/String;

    move-result-object v2

    goto :goto_15

    .line 57
    :cond_29
    :goto_14
    const-string v2, ""

    :cond_2a
    :goto_15
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzas;

    .line 59
    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/measurement/zzae;->zzs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzas;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_f
    move-object/from16 v9, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    move-object/from16 v4, v17

    const/4 v0, 0x2

    .line 40
    invoke-static {v1, v0, v6}, Lcom/google/android/gms/internal/measurement/zzh;->zzc(Ljava/lang/String;ILjava/util/List;)V

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzao;->zzf:Lcom/google/android/gms/internal/measurement/zzao;

    .line 41
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2b

    const/4 v5, 0x0

    .line 42
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzao;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object v0

    .line 43
    :cond_2b
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    const/4 v5, 0x1

    if-le v1, v5, :cond_2d

    .line 44
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzao;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object v1

    .line 45
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzao;->zzd()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzh;->zzi(D)D

    move-result-wide v1

    .line 46
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    move-result v3

    int-to-double v5, v3

    cmpl-double v3, v1, v5

    if-ltz v3, :cond_2c

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzah;

    .line 47
    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    return-object v0

    :cond_2c
    const-wide/16 v23, 0x0

    cmpg-double v3, v1, v23

    if-gez v3, :cond_2e

    .line 48
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    move-result v3

    int-to-double v5, v3

    add-double/2addr v1, v5

    goto :goto_16

    :cond_2d
    const-wide/16 v23, 0x0

    move-wide/from16 v1, v23

    .line 49
    :cond_2e
    :goto_16
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzg()Ljava/util/Iterator;

    move-result-object v3

    :cond_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30

    .line 50
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-double v6, v5

    cmpg-double v8, v6, v1

    if-ltz v8, :cond_2f

    .line 51
    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/measurement/zzae;->zzl(I)Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/google/android/gms/internal/measurement/zzh;->zzf(Lcom/google/android/gms/internal/measurement/zzao;Lcom/google/android/gms/internal/measurement/zzao;)Z

    move-result v5

    if-eqz v5, :cond_2f

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzah;

    .line 52
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    return-object v0

    :cond_30
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzah;

    .line 53
    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    return-object v0

    :pswitch_10
    move-object/from16 v9, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    move-object/from16 v1, v22

    const/4 v5, 0x1

    .line 34
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Ljava/lang/String;ILjava/util/List;)V

    const/4 v5, 0x0

    .line 35
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzao;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzan;

    if-eqz v2, :cond_32

    .line 37
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzi()I

    move-result v0

    if-nez v0, :cond_31

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzao;->zzf:Lcom/google/android/gms/internal/measurement/zzao;

    return-object v0

    .line 38
    :cond_31
    check-cast v1, Lcom/google/android/gms/internal/measurement/zzan;

    .line 39
    invoke-static {v9, v3, v1, v8, v8}, Lcom/google/android/gms/internal/measurement/zzba;->zzc(Lcom/google/android/gms/internal/measurement/zzae;Lcom/google/android/gms/internal/measurement/zzg;Lcom/google/android/gms/internal/measurement/zzai;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/zzae;

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzao;->zzf:Lcom/google/android/gms/internal/measurement/zzao;

    return-object v0

    .line 35
    :cond_32
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 36
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_11
    move-object/from16 v9, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    move-object/from16 v1, v21

    const/4 v5, 0x1

    .line 21
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Ljava/lang/String;ILjava/util/List;)V

    const/4 v5, 0x0

    .line 22
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzao;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzan;

    if-eqz v2, :cond_35

    .line 24
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzi()I

    move-result v0

    if-nez v0, :cond_33

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzae;

    .line 25
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzae;-><init>()V

    return-object v0

    .line 26
    :cond_33
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzt()Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzae;

    .line 27
    check-cast v1, Lcom/google/android/gms/internal/measurement/zzan;

    .line 28
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v9, v3, v1, v8, v2}, Lcom/google/android/gms/internal/measurement/zzba;->zzc(Lcom/google/android/gms/internal/measurement/zzae;Lcom/google/android/gms/internal/measurement/zzg;Lcom/google/android/gms/internal/measurement/zzai;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/zzae;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzae;

    .line 29
    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzae;-><init>()V

    .line 30
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzae;->zzg()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 32
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzae;->zzl(I)Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object v3

    .line 33
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    move-result v4

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/internal/measurement/zzae;->zzn(ILcom/google/android/gms/internal/measurement/zzao;)V

    goto :goto_17

    :cond_34
    return-object v2

    .line 22
    :cond_35
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 23
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_12
    move-object/from16 v9, p1

    move-object/from16 v3, p2

    move-object/from16 v1, p3

    const/4 v5, 0x1

    .line 14
    invoke-static {v6, v5, v1}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Ljava/lang/String;ILjava/util/List;)V

    const/4 v5, 0x0

    .line 15
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzao;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzan;

    if-eqz v2, :cond_38

    .line 17
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    move-result v0

    if-nez v0, :cond_36

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzao;->zzk:Lcom/google/android/gms/internal/measurement/zzao;

    return-object v0

    .line 18
    :cond_36
    check-cast v1, Lcom/google/android/gms/internal/measurement/zzan;

    .line 19
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v9, v3, v1, v0, v2}, Lcom/google/android/gms/internal/measurement/zzba;->zzc(Lcom/google/android/gms/internal/measurement/zzae;Lcom/google/android/gms/internal/measurement/zzg;Lcom/google/android/gms/internal/measurement/zzai;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/zzae;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    move-result v0

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    move-result v1

    if-eq v0, v1, :cond_37

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzao;->zzl:Lcom/google/android/gms/internal/measurement/zzao;

    return-object v0

    :cond_37
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzao;->zzk:Lcom/google/android/gms/internal/measurement/zzao;

    return-object v0

    .line 15
    :cond_38
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 16
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_13
    move-object/from16 v9, p1

    move-object/from16 v3, p2

    move-object/from16 v1, p3

    .line 2
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzae;->zzt()Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzae;

    .line 3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3c

    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_39
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzao;

    .line 5
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object v2

    instance-of v4, v2, Lcom/google/android/gms/internal/measurement/zzag;

    if-nez v4, :cond_3b

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    move-result v4

    instance-of v5, v2, Lcom/google/android/gms/internal/measurement/zzae;

    if-eqz v5, :cond_3a

    .line 7
    check-cast v2, Lcom/google/android/gms/internal/measurement/zzae;

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzae;->zzg()Ljava/util/Iterator;

    move-result-object v5

    .line 9
    :goto_19
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_39

    .line 10
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 11
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzae;->zzl(I)Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object v6

    invoke-virtual {v0, v7, v6}, Lcom/google/android/gms/internal/measurement/zzae;->zzn(ILcom/google/android/gms/internal/measurement/zzao;)V

    goto :goto_19

    .line 12
    :cond_3a
    invoke-virtual {v0, v4, v2}, Lcom/google/android/gms/internal/measurement/zzae;->zzn(ILcom/google/android/gms/internal/measurement/zzao;)V

    goto :goto_18

    .line 5
    :cond_3b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed evaluation of arguments"

    .line 13
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x69e9ad94 -> :sswitch_13
        -0x50c088ec -> :sswitch_12
        -0x4bf73488 -> :sswitch_11
        -0x37b90a9a -> :sswitch_10
        -0x3565b984 -> :sswitch_f
        -0x28732996 -> :sswitch_e
        -0x1bdda92d -> :sswitch_d
        -0x108c6a77 -> :sswitch_c
        0x1a55c -> :sswitch_b
        0x1b251 -> :sswitch_a
        0x31dd2a -> :sswitch_9
        0x34af1a -> :sswitch_8
        0x35f4f4 -> :sswitch_7
        0x35f59e -> :sswitch_6
        0x5c6731b -> :sswitch_5
        0x6856c82 -> :sswitch_4
        0x6873d92 -> :sswitch_3
        0x398d4c56 -> :sswitch_2
        0x418e52e2 -> :sswitch_1
        0x73d44649 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static zzb(Lcom/google/android/gms/internal/measurement/zzae;Lcom/google/android/gms/internal/measurement/zzg;Ljava/util/List;Z)Lcom/google/android/gms/internal/measurement/zzao;
    .locals 10

    .line 1
    const-string v0, "reduce"

    const/4 v1, 0x1

    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzh;->zzb(Ljava/lang/String;ILjava/util/List;)V

    const/4 v2, 0x2

    .line 2
    invoke-static {v0, v2, p2}, Lcom/google/android/gms/internal/measurement/zzh;->zzc(Ljava/lang/String;ILjava/util/List;)V

    const/4 v0, 0x0

    .line 3
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzao;

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/internal/measurement/zzai;

    if-eqz v4, :cond_a

    .line 5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v2, :cond_1

    .line 6
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzao;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object p2

    instance-of v4, p2, Lcom/google/android/gms/internal/measurement/zzag;

    if-nez v4, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed to parse initial value"

    .line 7
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    move-result p2

    if-eqz p2, :cond_9

    const/4 p2, 0x0

    .line 9
    :goto_0
    check-cast v3, Lcom/google/android/gms/internal/measurement/zzai;

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    move-result v4

    if-eqz p3, :cond_2

    move v5, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v4, -0x1

    :goto_1
    const/4 v6, -0x1

    if-eqz p3, :cond_3

    add-int/2addr v4, v6

    goto :goto_2

    :cond_3
    move v4, v0

    :goto_2
    if-eq v1, p3, :cond_4

    goto :goto_3

    :cond_4
    move v6, v1

    :goto_3
    if-nez p2, :cond_6

    .line 11
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/measurement/zzae;->zzl(I)Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object p2

    :cond_5
    :goto_4
    add-int/2addr v5, v6

    :cond_6
    sub-int p3, v4, v5

    mul-int/2addr p3, v6

    if-ltz p3, :cond_8

    .line 12
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/measurement/zzae;->zzo(I)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 13
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/measurement/zzae;->zzl(I)Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object p3

    int-to-double v7, v5

    new-instance v9, Lcom/google/android/gms/internal/measurement/zzah;

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-direct {v9, v7}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/android/gms/internal/measurement/zzao;

    aput-object p2, v7, v0

    aput-object p3, v7, v1

    aput-object v9, v7, v2

    const/4 p2, 0x3

    aput-object p0, v7, p2

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 14
    invoke-virtual {v3, p1, p2}, Lcom/google/android/gms/internal/measurement/zzai;->zza(Lcom/google/android/gms/internal/measurement/zzg;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object p2

    instance-of p3, p2, Lcom/google/android/gms/internal/measurement/zzag;

    if-nez p3, :cond_7

    goto :goto_4

    .line 7
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Reduce operation failed"

    .line 15
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    return-object p2

    .line 8
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Empty array with no initial value error"

    .line 16
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Callback should be a method"

    .line 4
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zzc(Lcom/google/android/gms/internal/measurement/zzae;Lcom/google/android/gms/internal/measurement/zzg;Lcom/google/android/gms/internal/measurement/zzai;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/zzae;
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzae;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzae;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzae;->zzg()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 4
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/zzae;->zzo(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/zzae;->zzl(I)Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object v3

    int-to-double v4, v2

    new-instance v6, Lcom/google/android/gms/internal/measurement/zzah;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v6, v4}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/google/android/gms/internal/measurement/zzao;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v3, 0x1

    aput-object v6, v4, v3

    const/4 v3, 0x2

    aput-object p0, v4, v3

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p2, p1, v3}, Lcom/google/android/gms/internal/measurement/zzai;->zza(Lcom/google/android/gms/internal/measurement/zzg;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object v3

    .line 6
    invoke-interface {v3}, Lcom/google/android/gms/internal/measurement/zzao;->zze()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_2

    .line 7
    invoke-interface {v3}, Lcom/google/android/gms/internal/measurement/zzao;->zze()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8
    :cond_2
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzae;->zzn(ILcom/google/android/gms/internal/measurement/zzao;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method
