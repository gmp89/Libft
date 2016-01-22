/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strsub.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gpetrov <gpetrov@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2013/12/22 18:44:05 by gpetrov           #+#    #+#             */
/*   Updated: 2013/12/22 18:44:06 by gpetrov          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strsub(char const *s, unsigned int start, size_t len)
{
	char		*res;
	size_t		i;

	if (!s)
		return (NULL);
	res = (char *)malloc((len + 1) * sizeof(*res));
	if (res)
	{
		i = 0;
		while (i < len)
		{
			res[i] = s[start + (unsigned int)i];
			i++;
		}
		res[i] = 0;
		return (res);
	}
	else
		return (NULL);
}
